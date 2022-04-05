delimiter $$
create procedure devolverDia(num int)
Begin
declare dia varchar (20);
case
	when num=1 then set dia:= 'Lunes';
    when num=2 then set dia:= 'Martes';
    when num=3 then set dia:= 'Miercoles';
    when num=4 then set dia:= 'Jueves';
    when num=5 then set dia:= 'Viernes';
    when num=6 then set dia:= 'Sabado';
    when num=7 then set dia:= 'Domingo';
end case;
select dia;
End $$

delimiter ;