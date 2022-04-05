 Delimiter $$
    CREATE PROCEDURE sumaNumeros(num1 int,num2 int)
    Begin
	    Declare suma int;
        Set suma = num1+num2;
        Select suma;
    END $$
    Delimiter ;