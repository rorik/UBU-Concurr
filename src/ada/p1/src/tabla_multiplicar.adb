with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Tabla_Multiplicar is
   Resultado: Integer;
begin
   Put_Line("Tablas de Multiplicar");
   Put_Line("=====================");
   New_Line(2);
   for Fila in 1..10 loop
      for Columna in 1..10 loop
         Resultado := Fila * Columna;
         Put(Fila);
         Put("*");
         Put(Columna);
         Put("=");
         Put(Resultado);
         New_Line;
        end loop;
   end loop;
end Tabla_Multipli
