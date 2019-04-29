package Llaves is
   Tamano : Integer := 10;
   type Conjunto is private;
   
   procedure Coger_Llave;
   procedure Dejar_Llave;
   procedure Consultar_Llaves;
   
private
   type Conjunto is array (1..Tamano) of Boolean;

end Llaves;
