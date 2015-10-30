CREATE TYPE topping_type IS TABLE OF VARCHAR2(10);
/

CREATE TABLE ice_cream
(name VARCHAR2(10),topping topping_type)
NESTED TABLE topping STORE AS ice_cream_tab;