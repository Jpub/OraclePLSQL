col name format a20
col topping format a50

INSERT INTO ice_cream VALUES('VANILLA',
    topping_type('JAM','COOKIE','CREAM'));

SELECT * FROM ice_cream;

UPDATE ice_cream
SET topping= topping_type
  ('CHOCOLATE','JAM','COOKIE','CREAM')
    WHERE name = 'VANILLA';

SELECT * FROM ice_cream;

DELETE FROM TABLE
  (SELECT topping FROM ice_cream WHERE name = 'VANILLA');

SELECT * FROM ice_cream;