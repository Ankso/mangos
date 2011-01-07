DELETE FROM `command` WHERE `name` = 'rates';
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('rates', '0',
'Sintaxis: .rates #n
Establece las rates de experiencia a la hora de completar misiones, matar criaturas y explorar zonas al valor de #n. #n tiene que ser un número entero entre 1 y 10.');