/****************************************************/
/* Archivo                  : task.sql              */
/* Base de Datos            : Principal             */
/* Diseñado por             : Aristoteles Garrido   */
/* Fecha de Documentación   : 22/ENE/2025           */
/****************************************************/
/* Creacion de la Tabla Task para el proyecto       */
/* Lista de Tareas                                  */
/*******************MODIFICACIONES*******************/
/* FECHA        AUTOR       RAZON                   */
/* 23/ENE/2025  A.Garrido   Emisión Inicial - D01   */
/****************************************************/

USE principal;

DROP TABLE IF EXISTS task;

/*Creacion de la tabla de tareas de Lista de tareas*/
CREATE TABLE IF NOT EXISTS task (
    tk_id INT(15) NOT NULL AUTO_INCREMENT,
    tk_user_id INT(5),
    tk_title VARCHAR(50) NOT NULL,
    tk_description VARCHAR(300),
    tk_status VARCHAR(20) NOT NULL,
    PRIMARY KEY (tk_id),
    FOREIGN KEY (tk_user_id) REFERENCES user(us_id)
)
comment='Tabla principal de las tareas';