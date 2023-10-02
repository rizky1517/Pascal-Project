program palindromee;
uses crt;
var
    kata : string;
    i, rkata : integer;
    palindrome : boolean;
begin
    clrscr;
    write('Masukan Kata : '); readln(kata);

    rkata := length(kata);
    palindrome := true;

    for i:=1 to (rkata div 2) do
    begin
        if (kata[i] <> (kata[rkata-i+1])) then
        begin
            palindrome:=false;
            break
        end;
    end;

    if (palindrome) then
        writeln(kata, ' Adalah Palindrome!')
    else
        writeln(kata, ' BUKAN Palindrome!');
end.
