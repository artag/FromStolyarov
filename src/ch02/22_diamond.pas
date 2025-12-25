program diamond;
var
    half_height, height: integer;
    i, j: integer;
begin
    { Enter valid diamond's height }
    { ============================ }
    repeat
        write('Enter the diamond''s height (positive odd): ');
        readln(height)
    until (height > 0) and (height mod 2 = 1);

    { Print upper diamond's half }
    { ========================== }
    half_height := height div 2;
    for j := 1 to half_height + 1 do
    begin
        for i := 1 to half_height + 1 - j do
            write(' ');

        write('*');
        if j > 1 then
        begin
            for i := 1 to 2 * j - 3 do
                write(' ');

            write('*')
        end;

        writeln
    end;

    { Print bottom diamond's half }
    { =========================== }
    for j := half_height downto 1 do
    begin
        for i := 1 to half_height + 1 - j do
            write(' ');

        write('*');
        if j > 1 then
        begin
            for i := 1 to 2 * j - 3 do
                write(' ');

            write('*')
        end;

        writeln
    end
end.