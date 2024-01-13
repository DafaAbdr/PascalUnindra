program DafaAbdurrohman_No2UAS;
uses crt;
var
    cari: integer;
    data: array[1..100] of integer;
    n, i, indeks: integer;

function sequen(cari: integer): integer;
begin
    i := 1;
    while ((i <= n) and (data[i] <> cari)) do
        i := i + 1;
        if data[i] = cari then
            sequen := i
        else
            sequen := 0;
end;

procedure menuSequential;
begin
    clrscr;
    write('Berapa banyak elemen array A? ');
    readln(n);
    writeln;
    writeln('Input Elemen Array A : ');
    writeln;
    for i := 1 to n do
    begin
        write('Elemen array A[', i, '] :');
        readln(data[i]);
    end;

    write('Elemen X yang dicari = ');
    readln(cari);
    indeks := sequen(cari);
    writeln;

    if indeks <> 0 then
    begin
        writeln('X Ditemukan Pada Indeks Ke-', indeks);
    end
    else
        write(cari, ' Tidak ditemukan');
end;

begin
    menuSequential;
    readln;
end.