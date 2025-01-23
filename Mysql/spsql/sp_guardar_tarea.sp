USE principal;

DROP PROCEDURE IF EXISTS sp_guardar_tarea;
/****************************************************/
/* Archivo                  : sp_guardar_tarea.sp   */
/* Base de Datos            : Principal             */
/* Diseñado por             : Aristoteles Garrido   */
/* Fecha de Documentación   : 22/ENE/2025           */
/**********************PROPOSITO*********************/
/* Este programa guarda las tareas que desee        */
/* usuario                                          */
/*******************MODIFICACIONES*******************/
/* FECHA        AUTOR       RAZON                   */
/* 23/ENE/2025  A.Garrido   Emisión Inicial - D01   */
/****************************************************/
delimiter //
CREATE PROCEDURE sp_guardar_tarea(
    i_task_id       INT,
    i_user_id       INT,
    i_title         VARCHAR(50),
    i_description   VARCHAR(300),
    i_operacion     CHAR(1)
)
BEGIN

    DECLARE w_task_id INT;
    DECLARE w_status  VARCHAR (20);

    -- Insertar una nueva tarea
    IF (i_operacion = 'I') THEN

        SET w_task_id = (SELECT MAX(tk_id) FROM task);
        SET w_status = "PENDIENTE";
        
        IF ISNULL(w_task_id) THEN
            SET w_task_id = 1;
        ELSE
            SET w_task_id = w_task_id + 1;
        END IF;

        INSERT INTO task(
            tk_id, tk_user_id, tk_title, tk_description, tk_status)
        VALUES(
            w_task_id, i_user_id, i_title, i_description, w_status);

    -- Actualizar una tarea existente
    ELSEIF (i_operacion = 'U') THEN
        UPDATE task
        SET 
            tk_user_id = i_user_id, 
            tk_title = i_title, 
            tk_description = i_description
        WHERE tk_id = i_task_id;

    END IF;

END //

delimiter ;

