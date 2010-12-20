DELETE FROM `command` WHERE `name` = 'server infobg';
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('server infobg', '0', 'Sintaxis: . server infobg
Muestra el estado de las colas para los campos de batalla disponibles para tu nivel. No puedes estar en cola para usar el comando.');