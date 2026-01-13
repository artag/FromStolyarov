program PrintDigitsOfNumberWithRecursion;

{ div - деление с отбрасыванием остатка }
{ mod - остаток от деления }

procedure PrintDigitsOfNumber(n: integer);
begin
    if n > 0 then
    begin
        PrintDigitsOfNumber(n div 10);
        write(n mod 10, ' ');
    end
end;

var
    number: integer;
begin
    read(number);
    PrintDigitsOfNumber(number);
    writeln
end.
