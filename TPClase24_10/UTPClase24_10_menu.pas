
Unit UTPClase24_10_menu;

Interface

Uses crt, UTPClase24_10_definion;

{----------------------------------------------------------------------}

Implementation
{----------------------------------------------------------------------}
Procedure procmenu();

Var 
  option: Integer;

Begin
  Repeat
    ClrScr;
    WriteLn('Ingrese una opcion');
    WriteLn('1. Cargar datos');
    WriteLn('2. Mostar total a pagar');
    WriteLn('3. Salir');
    readLn(option);
    ClrScr;
    Case option Of 
      1: ;
      2: ;
      3: //end
    End;
  Until option=3;
End;

{----------------------------------------------------------------------}
End.
