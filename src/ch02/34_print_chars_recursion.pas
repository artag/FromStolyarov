program PrintCharsWithRecursion;

procedure PrintChars(ch: char; count: integer);
begin
    if count > 0 then
    begin
        write(ch);
        PrintChars(ch, count - 1);
    end
end;

var
    count: integer;
begin
    write('Enter chars printing count: ');
    read(count);

    PrintChars('*', count);
    writeln
end.