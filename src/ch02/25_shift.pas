program shift;
begin
    { shift left }

    writeln('1 shl 5 = ', 1 shl 5);             { 32 }
    writeln('-1 shl 5 = ', -1 shl 5);           { -32 }
    writeln('21 shl 3 = ', 21 shl 3);           { 168 }
    writeln('-21 shl 3 = ', -21 shl 3);         { -168 }


    { shift right }

    writeln('1024 shr 4 = ', 1024 shr 4);       { 64 }
    writeln('-1024 shr 4 = ', -1024 shr 4);     { 1152921504606846912 }
end.