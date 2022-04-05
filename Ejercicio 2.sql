Delimiter $$
    Create function sumaNumeros(num1 int ,num2 Int)
    Returns int

    Begin
	    Declare suma int;
        set suma = num1+num2;
        return suma;
    END $$
    Delimiter ;