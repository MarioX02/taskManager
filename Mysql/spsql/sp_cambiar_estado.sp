USE principal;

DROP PROCEDURE IF EXISTS sp_cambiar_estado;

/****************************************************/
/* Archivo                  : sp_cambiar_estado.sp  */
/* Base de Datos            : Principal             */
/* Diseñado por             : Aristoteles Garrido   */
/* Fecha de Documentación   : 23/ENE/2025           */
/**********************PROPOSITO*********************/
/* Este programa cambia el estado de las tareas     */
/*******************MODIFICACIONES*******************/
/* FECHA        AUTOR       RAZON                   */
/* 23/ENE/2025  A.Garrido   Emisión Inicial - D01   */
/****************************************************/
delimiter //

CREATE PROCEDURE sp_cambiar_estado(
    IN i_task_id       INT,
    IN i_status        VARCHAR(20)
)
BEGIN

    -- Verificar si la tarea existe
    IF NOT EXISTS (SELECT 1 FROM task WHERE tk_task_id = i_task_id) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El ID de la tarea no existe.';
    END IF;

    -- Actualizar el estado de la tarea
    UPDATE task
    SET 
        tk_status = i_status
    WHERE tk_task_id = i_task_id;

END //

delimiter ;