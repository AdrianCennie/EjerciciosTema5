Delimiter $$
CREATE PROCEDURE sacarFecha ()
Begin
	Declare fecha date;
	Set fecha = (
		Select min(dp.Fecha_Alt)
        From datospersonales dp, departamento d, empleados e
        Where dp.Clave_Depto = d.Clave_Depto and e.Clave_Depto and d.nombre= "Personal");
    Select fecha;
END $$