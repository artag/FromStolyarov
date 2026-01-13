program ReverseNumberWithRecursionFunction;

{ div - деление с отбрасыванием остатка }
{ mod - остаток от деления }

function DoReverseNumber(n, m: longint): longint;
begin
    if n = 0 then
        begin
            {
            writeln('m = ', m);
            }

            DoReverseNumber := m
        end
    else
        begin
            { 
            writeln('n = ', n, '; m = ', m);
            writeln('n div 10 = ', n div 10);
            writeln('m * 10 = ', m * 10);
            writeln('n mod 10 = ', n mod 10);
            writeln('m * 10 + n mod 10 = ', m * 10 + n mod 10);
            writeln;
            }

            DoReverseNumber := DoReverseNumber(n div 10, m * 10 + n mod 10)
        end
end;

function ReverseNumber(n: longint): longint;
begin
    ReverseNumber := DoReverseNumber(n, 0)
end;

var
    num, reverse: longint;
begin
    read(num);
    reverse := ReverseNumber(num);
    writeln('Reverse number = ', reverse)
end.
