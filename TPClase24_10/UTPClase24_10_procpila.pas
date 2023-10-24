
Unit UTPClase24_10_procpila;

Interface

Uses crt, UTPClase24_10_definion;

Procedure CREARPILA(Var P:T_PILA);
Procedure APILAR (Var P:T_PILA; X:t_dato_pila);
Function PILA_LLENA (Var P:T_PILA): BOOLEAN;
Function PILA_VACIA (Var P:T_PILA): BOOLEAN;
Procedure DESAPILAR (Var P:T_PILA; Var X:t_dato_pila);
{----------------------------------------------------------------------}

Implementation
{----------------------------------------------------------------------}
Procedure CREARPILA(Var P:T_PILA);

Begin
  P.TAM := 0;
  P.TOPE := 0;
End;

{----------------------------------------------------------------------}
Procedure APILAR (Var P:T_PILA; X:t_dato_pila);

Begin
  P.TOPE := P.TOPE+1;
  P.ELEM[P.TOPE] := X;
  INC(P.TAM)
End;

{----------------------------------------------------------------------}
Function PILA_LLENA (Var P:T_PILA): BOOLEAN;
Begin
  PILA_LLENA := P.TAM=N ;
End;

{----------------------------------------------------------------------}
Function PILA_VACIA (Var P:T_PILA): BOOLEAN;
Begin
  PILA_VACIA := P.TAM=0;
End;

{----------------------------------------------------------------------}
Procedure DESAPILAR (Var P:T_PILA;Var X:t_dato_pila);

Begin
  X := P.ELEM[P.TOPE];
  P.TOPE := P.TOPE-1;
  DEC(P.TAM)
End;

{----------------------------------------------------------------------}

End.
