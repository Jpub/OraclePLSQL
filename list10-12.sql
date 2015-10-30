CREATE OR REPLACE PACKAGE test_para
IS
  TYPE tab IS TABLE OF dept%ROWTYPE
                INDEX BY BINARY_INTEGER;
  table_rec tab;
  PROCEDURE get_table(para OUT NOCOPY tab);
END;
/

CREATE OR REPLACE PACKAGE BODY test_para
IS
  PROCEDURE get_table(para OUT NOCOPY tab)
  IS
    n NUMBER := 0;
    CURSOR dept_cl IS SELECT * FROM dept;
  BEGIN
    FOR r IN dept_cl LOOP
      n := n+1;
      table_rec(n) := r;
    END LOOP;
    para :=table_rec;
  END get_table;
END;
/

BEGIN
  test_para.get_table(test_para.table_rec);
  FOR r IN 1.. test_para.table_rec.COUNT LOOP
    DBMS_OUTPUT.PUT_LINE(test_para.table_rec(r).deptno||'  '||
                         test_para.table_rec(r).dname||'  '||
                         test_para.table_rec(r).loc);
  END LOOP;
END;
/