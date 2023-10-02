program helloworld;
uses crt;
var
    kata, repo, diva : string;
    i, x : integer;
begin
    clrscr();
    randomize();
    
    repo := 'abcdefghijklmnopqrstuvwxyz ';
    kata := 'hello world';
    diva := '';
    i := 1;
    
    while (diva[i] <> kata[i]) do
    begin
        x := random(28);
        if(repo[x] = kata[i]) then
            begin
                diva := diva + kata[i];
                i := i + 1;
                writeln(diva);
                delay(15);
            end
        else
            begin
                writeln(diva, repo[x]);
                delay(15);
            end;
    end;
end.
