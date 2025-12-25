program sumNumbers;
var
    sum: integer = 0;
    x: integer;
begin
    repeat
        write('Enter number: ');
        readln(x);
        sum := sum + x;
        writeln('Sum is ', sum)
    until sum > 1000
end.
