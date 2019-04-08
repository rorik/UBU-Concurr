--  EJERCICIO 1 - Producto escalar
with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure producto_escalar is
   Dimension_Max : constant Integer := 100;
   type Vector is array (1..Dimension_Max) of Float;
   V1,V2 : Vector;
   N : Integer range 1..Dimension_Max;
   Prod_Escalar : Float:=0.0;

   --subtype Indice is Integer range 1..Dimension_Max; -- ?

   procedure Lee_Vector (N : in Integer; V : out Vector) is
   begin
      for I in 1..N loop
         Put("Introduce componente");
         Put(I); Put(": ");
         Get(V(I)); Skip_Line;
      end loop;
   end Lee_Vector;

   procedure Calcula_Producto (N : in Integer; V1 : in Vector; V2 : in Vector; Prod_Escalar : in out Float) is
   begin
      for I in 1..N loop
         Prod_Escalar:=Prod_Escalar + V1(I)*V2(I);
      end loop;
   end Calcula_Producto;

begin
   Put("Introduce dimension : ");
   Get(N); Skip_Line;
   Lee_Vector(N, V1);
   Lee_Vector(N, V2);
   Calcula_Producto(N, V1, V2, Prod_Escalar);
   Put("El producto escalar es : ");
   Put(Prod_Escalar);
   New_Line;
end producto_escalar;
