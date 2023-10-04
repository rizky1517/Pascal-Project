program main;
uses crt;
type
    data = record
        nama, npm, kelas : string;
    end;
var
    mahasiswa : array of data;
    // addres : array of ^data;
    t1, t2, t3 : ^string;
    n, i : integer;
begin
    clrscr;
    write('masukan jumlah data : '); readln(n);
    setlength(mahasiswa,n);
    // setlength(addres,n);
    writeln;

    for i := 1 to n do with mahasiswa[i] do
    begin
        write('masukan nama  ke-',i,' : '); readln(nama);
        write('masukan npm   ke-',i,' : '); readln(npm);
        write('masukan kelas ke-',i,' : '); readln(kelas);
        writeln;
    end;


    for i := 1 to n do with mahasiswa[i] do
    begin
        // addres[i].nama := @nama;
        // writeln('nama ke-1 : ',addres[i].nama^);

        // addres[i].npm := @npm;
        // writeln('npm  ke-1 : ',addres[i].npm^);

        // addres[i].kelas := @kelas;
        // writeln('kelas  ke-1 : ',addres[i].kelas^);
        
        t1 := @nama;
        writeln('nama  ke-',i,' : ',t1^);

        t2 := @npm;
        writeln('npm   ke-',i,' : ',t2^);

        t3 := @kelas;
        writeln('kelas ke-',i,' : ',t3^);

        writeln
    end;

end.
