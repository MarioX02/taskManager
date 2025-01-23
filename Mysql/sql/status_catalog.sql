/****************************************************/
/* Archivo                  : status_catalog.sql    */
/* Base de Datos            : Principal             */
/* Diseñado por             : Aristoteles Garrido   */
/* Fecha de Documentación   : 22/ENE/2025           */
/****************************************************/
/* Creacion de la Tabla status_catalog para el      */
/* proyecto Lista de Tareas                         */
/*******************MODIFICACIONES*******************/
/* FECHA        AUTOR       RAZON                   */
/* 23/ENE/2025  A.Garrido   Emisión Inicial - D01   */
/****************************************************/

USE principal;

DROP TABLE IF EXISTS status_catalog;

/*Creacion de la tabla de tareas de Lista de tareas*/
CREATE TABLE IF NOT EXISTS status_catalog (
    sc_id char(1) NOT NULL,
    sc_description VARCHAR(15) NOT NULL,
    PRIMARY KEY (sc_id)
)
comment='Tabla de catalogo de los estados';