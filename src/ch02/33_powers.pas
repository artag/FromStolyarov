program PowersProcedure;

procedure powers(x: real; var quad, cube, fourth, fifth: real);
begin
    quad := x * x;
    cube := quad * x;
    fourth := cube * x;
    fifth := fourth * x
end;

const
    m = 0;
    n = 3;
var
    num: real;
    qu, cu, fo, fi: real;
begin
    write('Enter number = ');
    read(num);

    powers(num, qu, cu, fo, fi);

    writeln('quad = ', qu:m:n);
    writeln('cube = ', cu:m:n);
    writeln('fourth = ', fo:m:n);
    writeln('fifth = ', fi:m:n)
end.