with Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO;
procedure Nota_Media is
  Nota1, Nota2, Nota3, Nota_Media : Float;
begin
   Put("Nota del primer trimestre: ");
   Get(Nota1);
   Skip_Line;
   Put("Nota del segundo trimestre: ");
   Get(Nota2);
   Skip_Line;
   Put("Nota del tercer trimestre: ");
   Get(Nota3);
   Skip_Line;
   New_Line;
   Nota_Media := (Nota1+Nota2+Nota3)/3.0;
   Put("Nota Media: ");
   Put(Nota_Media);
end Nota_Media;
