program DiamondProc;

procedure PrintSpaces(count: integer);
var
    i: integer;
begin
    for i := 1 to count do
        write(' ')
end;

procedure PrintLineOfDiamond(i, half_height: integer);
begin
    PrintSpaces(half_height + 1 - i);
    write('*');
    if i > 1 then
    begin
        PrintSpaces(2 * i - 3);
        write('*')
    end;

    writeln
end;

var
    half_height, height: integer;
    i: integer;
begin
    repeat                                      { Enter valid diamond's height }
        write('Enter the diamond''s height (positive odd): ');
        readln(height)
    until (height > 0) and (height mod 2 = 1);

    half_height := height div 2;
    for i := 1 to half_height + 1 do            { Print upper diamond's half }
        PrintLineOfDiamond(i, half_height);

    for i := half_height downto 1 do            { Print bottom diamond's half }
        PrintLineOfDiamond(i, half_height)
end.
