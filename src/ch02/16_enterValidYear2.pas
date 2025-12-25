program enterValidYear2;
var
    firstInput: boolean = true;
    year: integer = 0;
begin
    write('Please type in your birth year: ');

    repeat
        if not firstInput then
        begin
            writeln(year, ' is not a valid year!');
            write('Please try again: ');
        end;
        readln(year);
        firstInput := false;
    until (year >= 1900) and (year <= 2025);

    writeln('The year ', year, ' is accepted. Thank you!')
end.
