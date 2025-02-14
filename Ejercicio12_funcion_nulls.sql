CREATE FUNCTION practicaKC.clean_integer (num int)
RETURNS INT AS
(
  IFNULL(num, -999999)
)
;

SELECT practicaKC.clean_integer(null) as resultado1;
SELECT practicaKC.clean_integer(20) as resultado2;