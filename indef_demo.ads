--  Ada 2022 topic: indefinite containers (String elements).
pragma Ada_2022;

with Ada.Containers.Indefinite_Vectors;

package Indef_Demo is

   package String_Vectors is new Ada.Containers.Indefinite_Vectors
     (Index_Type => Positive, Element_Type => String);

   procedure Append_Word
     (V : in out String_Vectors.Vector; Word : String);

   function Join_Spaces (V : String_Vectors.Vector) return String;
   function Length (V : String_Vectors.Vector) return Natural;
   function Element_At
     (V : String_Vectors.Vector; Index : Positive) return String;

end Indef_Demo;
