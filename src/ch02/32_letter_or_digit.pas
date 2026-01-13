program IsLetterOrDigit;

function IsLatinLetter(ch: char): boolean;
begin
    IsLatinLetter :=
        ((ch >= 'A') and (ch <= 'Z')) or
        ((ch >= 'a') and (ch <= 'z'))
end;

function IsDigit(ch: char): boolean;
begin
    IsDigit := (ch >= '0') and (ch <= '9')
end;

var
    c: char;

begin
    read(c);

    if not IsLatinLetter(c) then
        if not IsDigit(c) then
            writeln('"', c, '"', ' is unknown symbol')
        else
            writeln('"', c, '"', ' is digit')
    else
        writeln('"', c, '"', ' is latin letter');
end.
