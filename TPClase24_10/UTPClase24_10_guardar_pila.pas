
Unit UTPClase24_10_guardar_pila;

Interface

Uses crt, UTPClase24_10_definion, UTPClase24_10_procpila, UTPClase24_10_util;
Procedure procgympila(matriz:t_matriz; Var pila:t_pila);
{-------------------------------------------------------------------------}

Implementation
Procedure proccargar_elem(matriz:t_matriz; Var pila:t_pila);

Var 
  i,j: Integer;
  aux: Real;
Begin
  For i:=1 To fil Do
    For j:=1 To col Do
      Begin
        aux := matriz[i,j].electricidad+matriz[i,j].gas+matriz[i,j].guardias+matriz[i,j].lavanderia+matriz[i,j].conserjeria;
        APILAR(pila,aux);
      End;
End;

{-------------------------------------------------------------------------}
Procedure procmostrar_pila(Var pila:t_pila);

Var 
  i: Integer;
  aux: Real;
Begin
  For i:=(fil*Col) Downto 1 Do
    Begin
      DESAPILAR(pila,aux);
      WriteLn('el departamento ',i,' tiene q pagar ', aux:0:2);
    End;
End;

{-------------------------------------------------------------------------}
Procedure procgympila(matriz:t_matriz; Var pila:t_pila);

Begin
  proccargar_elem(matriz,pila);
  procmostrar_pila(pila);
  procpulsartecla;
End;

{-------------------------------------------------------------------------}

End.
