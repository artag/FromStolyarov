program bitwise;
var
    x, y, p, q, r: integer;
    m, n: word;     { only positive }

begin
    x := 75;
    y := not x;
    writeln('x = ', x);         { 75 }
    writeln('y = ', y);         { -76 }
    writeln;

    m := 75;
    n := not m;
    writeln('m = ', m);         { 75 }
    writeln('n = ', n);         { 65460 }
    writeln;

    x := 42;
    y := 166;
    p := x and y;
    q := x or y;
    r := x xor y;
    writeln('x = ', x);         { 42 }
    writeln('y = ', y);         { 166 }
    writeln('x and y = ', p);   { 34 }
    writeln('x or y = ', q);    { 174 }
    writeln('x xor y = ', r);   { 140 }

end.