(*
    Решение квадратного уравнения
    Демонстрация досрочного выхода из процедуры
*)
program Quadratic;


(*
    Реализация без досрочного выхода
*)
procedure quadratic(
    a, b, c: real;
    var ok: boolean;
    var d, x1, x2: real);
var
    sqrt_d: real;
begin
    if a = 0 then
        ok := false
    else
    begin
        d := b * b - 4 * a * c;
        if d < 0 then
            ok := false
        else
        begin
            sqrt_d := sqrt(d);
            x1 := (-b - sqrt_d) / (2 * a);
            x2 := (-b + sqrt_d) / (2 * a);
            ok := true
        end
    end
end;

(*
    Реализация с досрочным выходом. Версия 1
*)
procedure quadratic_v1(
    a, b, c: real;
    var ok: boolean;
    var d, x1, x2: real);
var
    sqrt_d: real;
begin
    if a = 0 then
    begin
        ok := false;
        exit
    end;

    d := b * b - 4 * a * c;
    if d < 0 then
    begin
        ok := false;
        exit
    end;

    sqrt_d := sqrt(d);
    x1 := (-b - sqrt_d) / (2 * a);
    x2 := (-b + sqrt_d) / (2 * a);
    ok := true
end;

(*
    Реализация с досрочным выходом. Версия 2
*)
procedure quadratic_v2(
    a, b, c: real;
    var ok: boolean;
    var d, x1, x2: real);
var
    sqrt_d: real;
begin
    ok := false;
    if a = 0 then
        exit;

    d := b * b - 4 * a * c;
    if d < 0 then
        exit;

    sqrt_d := sqrt(d);
    x1 := (-b - sqrt_d) / (2 * a);
    x2 := (-b + sqrt_d) / (2 * a);
    ok := true
end;

(*
    ============================================================================
*)

const
    m = 0;
    n = 2;
var
    a, b, c: real;
    ok: boolean = false;
    d: real = 0;
    x1: real = 0;
    x2: real = 0;
begin
    write('Enter number a = ');
    read(a);
    write('Enter number b = ');
    read(b);
    write('Enter number c = ');
    read(c);

    // quadratic(a, b, c, ok, d, x1, x2);
    // quadratic_v1(a, b, c, ok, d, x1, x2);
    quadratic_v2(a, b, c, ok, d, x1, x2);

    if not ok then
    begin
        writeln('The equation has no roots.');
        writeln('d = ', d:m:n)
    end
    else
    begin
        writeln('d = ', d:m:n);
        writeln('x1 = ', x1:m:n);
        writeln('x2 = ', x2:m:n);
    end
end.
