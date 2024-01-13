program DafaAbdurrohman_No1UAS;
uses
    crt;
type
    Matrix = array[1..100] of integer;

procedure Input(var d: Matrix; var n: integer);
var
    k: integer;
begin
    write('Jumlah data yang akan diurutkan?');
    readln(n);
    writeln;
    writeln('Masukkan Data : ');
    for k := 1 to n do
        begin
            write('Data Ke', k, '?');
            readln(d[k]);
        end;
    writeln;
end;

procedure TukarData(var a, b: integer);
var
    t: integer;
begin
    t := a;
    a := b;
    b := t;
end;

procedure QuickSort(var d: Matrix; a, b: integer);
var
    a1, b1, pivot: integer;
begin
    a1 := a;
    b1 := b;
    pivot := d[(a + b) div 2];
    repeat
        while d[a1] < pivot do
            inc(a1);
        while d[b1] > pivot do
            dec(b1);
        if a1 <= b1 then
        begin
            TukarData(d[a1], d[b1]);
            inc(a1);
            dec(b1);
        end;
    until a1 > b1;
        if a < b1 then
            QuickSort(d, a, b1);
        if a1 < b then
            QuickSort(d, a1, b);
end;

var
    data: Matrix;
    n: integer;
begin
    clrscr;
    Input(data, n);
    QuickSort(data, 1, n);
    writeln('Data yang telah diurut: ');
    writeln('------------------------');
    for n := 1 to n do
        write(data[n],' ');
    readln;
end.