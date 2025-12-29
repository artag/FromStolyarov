program PrintLineOfChars;

procedure PrintChars(ch: char; count: integer);
var
    i: integer;
begin
    for i := 1 to count do
        write(ch);
    writeln
end;

var
    ch: char;
    num: integer;
begin
    write('Enter char to print: ');
    readln(ch);
    write('Enter number of chars to print: ');
    readln(num);

    PrintChars(ch, num)
end.