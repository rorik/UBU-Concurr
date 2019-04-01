with Ada.Text_IO;
procedure Nota_Media_Num is
   type Nota_Num is range 0..10;
   type Nota_Letra is (Supsenso, Aprobado, Notable, Sobresaliente);
   package Nota_IO is new Ada.Text_IO.Integer_IO(Nota_Num);
   package Letra_IO is new Ada.Text_IO.Enumeration_IO(Nota_Letra);
   Nota1, Nota2, Nota3, Nota_Media : Nota_Num;
   Nota_Final : Nota_Letra;
begin
   Ada.Text_IO.Put("Nota del primer trimestre: ");
   Nota_IO.Get(Nota1);
   Ada.Text_IO.Skip_Line;
   Ada.Text_IO.Put("Nota del segundo trimestre: ");
   Nota_IO.Get(Nota2);
   Ada.Text_IO.Skip_Line;
   Ada.Text_IO.Put("Nota del tercer trimestre: ");
   Nota_IO.Get(Nota3);
   Ada.Text_IO.Skip_Line;
   Nota_Media := (Nota1+Nota2+Nota3)/3;
   Ada.Text_IO.Put("Nota Media: ");
   Nota_IO.Put(Nota_Media);
   Ada.Text_IO.New_Line;
   case Nota_Media is
      when 0..4 => Nota_Final := Supsenso;
      when 5..6 => Nota_Final := Aprobado;
      when 7..8 => Nota_Final := Notable;
      when 9..10 => Nota_Final := Sobresaliente;
   end case;
   Ada.Text_IO.Put("Nota final: ");
   Letra_IO.Put(Nota_Final);
   Ada.Text_IO.New_Line;
end Nota_Media_Num;
