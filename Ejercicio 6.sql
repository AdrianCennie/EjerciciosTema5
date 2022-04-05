delimiter $$

create function delvolverBoolean(num varchar (30)) returns int

Begin
declare var boolean;
if num mod 2=0
then set var := true;
else set var := false;
end if;
return var;
End $$

delimiter ;