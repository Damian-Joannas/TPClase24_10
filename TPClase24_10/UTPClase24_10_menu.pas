
Unit UTPClase24_10_menu;

Interface

Uses crt, UTPClase24_10_definion, UTPClase24_10_cargar_matriz, UTPClase24_10_util;
Procedure procmenu();

{----------------------------------------------------------------------}

Implementation
{----------------------------------------------------------------------}
Procedure procmenu();

Var 
  option: Integer;
  matriz: t_matriz;
  pila: t_pila;
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
      1: proccargar_matriz(matriz);
      2: ;
      3: //end
    End;
  Until option=3;
End;

{----------------------------------------------------------------------}
End.
