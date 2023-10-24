
Unit UTPClase24_10_cargar_matriz;

Interface

Uses crt, UTPClase24_10_definion, UTPClase24_10_util;
Procedure proccargar_matriz(Var matriz:t_matriz);

{-------------------------------------------------------------------------}

Implementation
Procedure proccargar_matriz(Var matriz:t_matriz);

Var 
  i,j: Integer;
Begin
  For i:=1 To fil Do
    For j:=1 To col Do
      Begin
        WriteLn('Ingresar los siguiente datos del departamento ',((i-1)*10+j),':');
        Write('Ingrese los gastos de electricidad: ');
        readLn(matriz[i,j].electricidad);
        Write('Ingrese los gastos de gas: ');
        readLn(matriz[i,j].gas);
        Write('Ingrese los gastos de guardias: ');
        readLn(matriz[i,j].guardias);
        Write('Ingrese los gastos de lavanderia: ');
        readLn(matriz[i,j].lavanderia);
        Write('Ingrese los gastos de conserjeria: ');
        readLn(matriz[i,j].conserjeria);
      End;
  procpulsartecla;
End;
{-------------------------------------------------------------------------}
End.
