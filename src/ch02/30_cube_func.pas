program CubeFunc;

function Cube(x: real): real;
begin
    Cube := x * x * x
end;

var
    num: real;
    result: real;
begin
    read(num);
    result := Cube(num);
    writeln(result)
end.
