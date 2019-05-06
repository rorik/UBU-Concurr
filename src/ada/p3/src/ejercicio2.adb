with Ada.Text_IO; use Ada.Text_IO;

procedure Ejercicio2 is
   task T1;
   task T2;
   task T3;
   
   task body T1 is
   begin
      for i in 1..1 loop
         Put_Line("Soy T1");
         delay 0.01;
      end loop;
   end T1;
   
   task body T2 is
   begin
      for i in 1..2 loop
         Put_Line("Soy T2");
         delay 0.01;
      end loop;
   end T2;
   
   task body T3 is
   begin
      for i in 1..3 loop
         Put_Line("Soy T3");
         delay 0.01;
      end loop;
   end T3;
   begin
      for i in 1..7 loop
         Put_Line("Soy P");
         delay 0.01;
      end loop;
   end Ejercicio2;
