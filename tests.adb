pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Indef_Demo; use Indef_Demo;

procedure Tests is
   V : String_Vectors.Vector;
begin
   Append_Word (V, "Ada");
   Append_Word (V, "2022");
   Append_Word (V, "containers");
   Assert (Length (V) = 3);
   Assert (Element_At (V, 1) = "Ada");
   Assert (Element_At (V, 3) = "containers");
   Put_Line ("PASS Indefinite_Vectors append / element");

   Assert (Join_Spaces (V) = "Ada 2022 containers");
   Put_Line ("PASS join over indefinite String elements");

   --  Different lengths in one vector (the indefinite point):
   Append_Word (V, "x");
   Assert (Element_At (V, 4) = "x");
   Assert (Element_At (V, 2)'Length = 4);
   Put_Line ("PASS mixed-length String elements");

   Put_Line ("All Indefinite Containers topic tests passed.");
end Tests;
