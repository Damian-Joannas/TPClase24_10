
Unit UTPClase24_10_cargar_matriz;

Interface

Uses crt, UTPClase24_10_definion;

{-------------------------------------------------------------------------}

Implementation
Procedure proccargar_matriz(matriz:t_matriz);

Var 
  i,j: Integer;
Begin
  For i:=1 To fil Do
    For j:=1 To col Do
      Begin
        WriteLn('ingresar los siguiente datos del departamento ',((i-1)*10+j));
        Write('ingrese los gastos de electricidad');
        readLn(matriz[i,j].electricidad);
        Write('ingrese los gastos de gas');
        readLn(matriz[i,j].gas);
        Write('ingrese los gastos de guardias');
        readLn(matriz[i,j].guardias);
        Write('ingrese los gastos de lavanderia');
        readLn(matriz[i,j].lavanderia);
        Write('ingrese los gastos de conserjeria');
        readLn(matriz[i,j].conserjeria);
      End;
End;
{-------------------------------------------------------------------------}
End.
