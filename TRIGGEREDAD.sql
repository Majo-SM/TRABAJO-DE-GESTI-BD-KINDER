create function edad_nino() returns Trigger
as
$$
declare
edad_max integer =4;
edad_min integer =3;
edad_nino integer;
begin
edad_nino :=(current_date - new.fecha_nacimientoni)/365;
if(edad_nino<edad_min or edad_nino > edad_max) then
raise exception 'Edad permitida entre 3 y 4 años.';
end if;
return new;
end$$
LANGUAGE plpgsql;

--trigger..before  
create trigger tg_impidereg
after
INSERT OR UPDATE ON reg_nino for each row
execute procedure edad_nino();
