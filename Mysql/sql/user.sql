/****************************************************/
/* Archivo                  : user.sql              */
/* Base de Datos            : Principal             */
/* Diseñado por             : Aristoteles Garrido   */
/* Fecha de Documentación   : 22/ENE/2025           */
/****************************************************/
/* Creacion de la Tabla User para el proyecto       */
/* Lista de Tareas                                  */
/*******************MODIFICACIONES*******************/
/* FECHA        AUTOR       RAZON                   */
/* 23/ENE/2025  A.Garrido   Emisión Inicial - D01   */
/****************************************************/

USE principal;

DROP TABLE IF EXISTS user;

/*Creacion de la tabla de usuarios de Lista de tareas*/
CREATE TABLE IF NOT EXISTS user 
    (
        us_id INT(5) NOT NULL AUTO_INCREMENT,
        us_user VARCHAR(25) NOT NULL,
        us_name VARCHAR(25) NOT NULL,
        us_lastname VARCHAR(25) NOT NULL,
        PRIMARY KEY (us_id)
    )
comment='Tabla principal de Usuarios';