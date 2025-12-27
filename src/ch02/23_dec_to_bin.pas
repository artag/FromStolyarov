program dec_to_bin;
var
    dec, modulo: integer;
    bin: qword;
    rank: qword;
begin
    read(dec);
    bin := 0;
    rank := 1;

    while dec > 0 do
    begin
        modulo := dec mod 2;
        dec := dec div 2;
        bin := bin + modulo * rank;
        rank := rank * 10;
    end;

    writeln(bin)
end.
