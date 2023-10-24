
Unit UTPClase24_10_util;

Interface

Uses crt;
Procedure procpulsartecla();

{-------------------------------------------------------------------------}

Implementation
Procedure procpulsartecla();
Begin
  WriteLn('Pulse una tecla para continuar');
  ReadKey;
  ClrScr;
End;

{-------------------------------------------------------------------------}

End.
