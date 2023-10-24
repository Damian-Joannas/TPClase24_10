
Unit UTPClase24_10_definion;

Interface

Uses crt;

Const 
  Fil = 6;
  Col = 10;
  n = 60;

Type 
  t_dato = Record
    electricidad: Real;
    gas: Real;
    guardias: Real;
    lavanderia: Real;
    conserjeria: Real;
  End;
  t_dato_pila = Real;

  t_matriz = array[1..fil, 1..col] Of t_dato;
  t_pila = Record
    tope: Byte;
    elem: array [1..n] Of t_dato_pila;
    tam: Byte;
  End;

{----------------------------------------------------------------------}

Implementation

{----------------------------------------------------------------------}
End.
