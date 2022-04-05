-4.1-
    Delimiter $$
    CREATE PROCEDURE devolverDNI (codigoEmp char(50))
    Begin
	    Declare denei char (9);
	    Set denei = (
		    Select DNI
            from datospersonales
            where codigoEmp = ClaveEmpleado);
	
    Select denei;
    END $$
    Delimiter;
-4.2-
    Delimiter $$
    CREATE function devolverEmpleados () returns int
    Begin
	    Declare total int;
	    Set total = (
		    Select count(e.Clave_empleado)
            From empleados e, departamento d
            where e.clave_Depto = d.Clave_Depto and d.nombre = "Personal");
        
     return total;
    END $$
    Delimiter;
-4.3-
    Delimiter $$
    CREATE function devolverEmpleadosConcreto (nombreDepartamento char (50)) returns int
    Begin
	    Declare num int;
	    Set num = (
		    Select count(e.Clave_Empleado)
		    From empleados e, departamento d
		    Where e.Clave_Depto=d.Clave_Depto and d.Nombre= nombreDepartamento);
     return num;
    END $$
    Delimiter ;