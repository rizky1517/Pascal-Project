program main;
uses crt;
procedure cetak(x : array of integer);
    var i : integer;
    begin
        for i := 1 to length(x) do
        begin
            write(x[i],' ');
        end;
    end;
procedure bubblesort(x : array of integer);
    var
        i, j, temp : integer;
    begin
        for i := (length(x)-1) downto 1 do
        begin
            for j := 1 to i do
            begin
                if (x[j] > x[j+1]) then
                    begin
                        temp := x[j];
                        x[j] := x[j+1];
                        x[j+1] := temp;
                    end;
            end;
        end;

        cetak(x);
    end;
procedure selectionsort(x : array of integer);
    var
    i, j, k, l, temp : integer;
    begin
        for i := 1 to (length(x)-1) do
        begin
            k := i;
            l := x[i];
            for j := (i+1) to length(x) do
            begin
                if (x[j] < l) then
                    begin
                        k := j;
                        l := x[j];
                    end;
            end;
            temp := x[i];
            x[i] := l;
            x[k] := temp;
        end;

        cetak(x);
    end;
procedure insertionsort(x : array of integer);
    var
        i, j, l : integer;
        ketemu : boolean;
    begin
        for i := 2 to length(x) do
        begin
            l := x[i];
            j := i-1;
            ketemu := false;
            while (j > 1) and (not ketemu) do
            begin
                if (l < x[j]) then 
                    begin
                        x[j+1] := x[j];
                        j := j - 1;
                    end
                else 
                    begin
                        ketemu := true;
                    end;
            end;
            x[j+1] := l;
        end;

        cetak(x);
    end;
procedure tukar(var a, b : integer);
    var t : integer;
    begin
        t := a;
        a := b;
        b := t;
    end;
procedure quicksort(var x : array of integer; a, b : integer);
    var
        a1, b1, pivot : integer;
    begin
        a1 := a;
        b1 := b;
        pivot := x[(a+b) div 2];
        repeat
            while(x[a1] < pivot) do inc(a1);
            while(x[b1] > pivot) do dec(b1);
            if (a1 <= b1) then
                begin
                    tukar(x[a1],x[b1]);
                    inc(a1);
                    dec(b1);
                end;
        until (a1>b1);
        if (a < b1) then quicksort(x, a, b1);
        if (a1 < b ) then quicksort(x,a1, b);

    end;
var
    data : array of integer = (9,2,10,4,7,20,3,8);
begin
    clrscr;
    selectionsort(data);
    writeln;
    bubblesort(data);
    writeln;
    insertionsort(data);
    writeln;
    quicksort(data,1,length(data));
    cetak(data);
end.
