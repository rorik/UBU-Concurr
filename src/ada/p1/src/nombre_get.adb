with Ada.Text_IO;
use Ada.Text_IO;

procedure Nombre_Get is
   Tu_Nombre, Tu_Perro : String (1..20);
   N_Nombre, N_Perro : Integer;
begin
   Put("Cual es tu nombre: ");
   Get_Line(Tu_Nombre, N_Nombre);
   Put("Como se llama tu perro: ");
   Get_Line(Tu_Perro, N_Perro);
   Put_Line("El perro de " & Tu_Nombre(1..N_Nombre) & " es " & Tu_Perro(1..N_Perro));
end Nombre_Get;
