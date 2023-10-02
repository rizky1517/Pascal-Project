program data_mahasiswa;
uses crt;
var
    nama_mhs, stat, stat2                 : array[1..100] of string;
    n_tgs, n_uts, n_uas                   : array[1..100] of integer;
    n_akhir                               : array[1..100] of real;
    jml_mhs, i, t_tgs, t_uts, t_uas       : integer;
    maxtgs, maxuts, maxuas                : integer;
    mintgs, minuts, minuas, x, y, z       : integer;
    rt_tgs, rt_uts, rt_uas, rt_na, t_na   : real;
    maxna, minna                          : real;
begin
    clrscr;
    randomize;
    write('Masukan Jumlah Mahasiswa : '); readln(jml_mhs);
    writeln;

    t_na:=0;
    t_tgs:=0;
    t_uas:=0;
    t_uts:=0;

    for i := 1 to jml_mhs do
    begin
        x:=random(41);
        y:=random(41);
        z:=random(41);
        writeln('Mahasiswa #', i);
        write('Nama Mahasiswa : '); readln(nama_mhs[i]);
        
        // // Manual Input Nilai
        // write('Nilai Tugas    : '); readln(n_tgs[i]); 
        // write('Nilai UTS      : '); readln(n_uts[i]); 
        // write('Nilai UAS      : '); readln(n_uas[i]); 

        // Auto Input Nilai
        writeln('Nilai Tugas    : ',(x+60)); n_tgs[i] := (x+60); 
        writeln('Nilai UTS      : ',(y+60)); n_uts[i] := (y+60); 
        writeln('Nilai UAS      : ',(z+60)); n_uas[i] := (z+60); 

        n_akhir[i]:=(20/100*n_tgs[i])+(30/100*n_uts[i]+(50/100*n_uas[i]));
        
        t_tgs:=t_tgs+n_tgs[i];
        t_uts:=t_uts+n_uts[i];
        t_uas:=t_uas+n_uas[i];
        t_na:=t_na+n_akhir[i];
        
        if (n_akhir[i]>=90) and (n_akhir[i]<=100) then 
            stat[i]:='A'
        else if (n_akhir[i]>=76) and (n_akhir[i]<=90) then
            stat[i]:='B'
        else if (n_akhir[i]>=61) and (n_akhir[i]<=75) then
            stat[i]:='C'
        else if (n_akhir[i]>=41) and (n_akhir[i]<=60) then
            stat[i]:='D'
        else if (n_akhir[i]>=0) and (n_akhir[i]<=40) then
            stat[i]:='E';

        if (n_akhir[i]>70) then 
            stat2[i]:='LULUS'
        else
            stat2[i]:='GAGAL';
        writeln;
    end;

    maxtgs:=n_tgs[1];
    maxuts:=n_uts[1];
    maxuas:=n_uas[1];
    maxna:=n_akhir[1];
    mintgs:=n_tgs[1];
    minuts:=n_uts[1];
    minuas:=n_uas[1];
    minna:=n_akhir[1];

    for i:=1 to jml_mhs do
    begin
        if (n_tgs[i]>=maxtgs) then maxtgs:=n_tgs[i];
        if (n_uts[i]>=maxuts) then maxuts:=n_uts[i];
        if (n_uas[i]>=maxuas) then maxuas:=n_uas[i];
        if (n_akhir[i]>=maxna) then maxna:=n_akhir[i];
        if (n_tgs[i]<=mintgs) then mintgs:=n_tgs[i];
        if (n_uts[i]<=minuts) then minuts:=n_uts[i];
        if (n_uas[i]<=minuas) then minuas:=n_uas[i];
        if (n_akhir[i]<=minna) then minna:=n_akhir[i];
    end;
    
        rt_tgs:=t_tgs/jml_mhs;
        rt_uts:=t_uts/jml_mhs;
        rt_uas:=t_uas/jml_mhs;
        rt_na:=t_na/jml_mhs;

    clrscr;
        writeln('+==============================================================================================+');
        writeln('| No | Nama Mahasiswa | Nilai Tugas | Nilai UTS | Nilai UAS | Nilai Akhir | Grade | Keterangan |');
        writeln('+==============================================================================================+');

    for i := 1 to jml_mhs do
    begin
        writeln('| ',i:2,' | ',nama_mhs[i]:14, ' | ',n_tgs[i]:11, ' | ', n_uts[i]:9, ' | ',n_uas[i]:9,' | ',n_akhir[i]:11:2, ' | ',stat[i]:5,' | ',stat2[i]:10, ' | ');
    end;
        writeln('+==============================================================================================+');
        writeln('|     Nilai Tertinggi |',maxtgs:12, ' | ',maxuts:9, ' | ',maxuas:9,' | ',maxna:11:2,' | ');
        writeln('|      Nilai Terendah |',mintgs:12, ' | ', minuts:9, ' | ',minuas:9,' | ',minna:11:2,' | ');
        writeln('|               Total |',t_tgs:12, ' | ', t_uts:9, ' | ',t_uas:9,' | ',t_na:11:2,' | ');
        writeln('|           Rata-rata |',rt_tgs:12:2, ' | ', rt_uts:9:2, ' | ',rt_uas:9:2,' | ',rt_na:11:2,' | ');
        writeln('+=========================================================================+');
    // readln; 
end.
