program primeNumber;
uses crt;
function isPrime(number : integer):boolean;
    var 
        i : integer;
    begin
        isPrime := true;

        if (number <= 1) then
            isPrime := false
        else
            for i := 2 to number-1 do
            begin
                if ((number mod i) = 0) then
                begin
                    isPrime := false;
                    exit;
                end
            end;
    end;
var
    number: integer;
begin
    clrscr;

    write('Input Number : '); readln(number);

    if (isPrime(number)) then
		write(number, ' Is Prime Number')
	else
		write(number,' Is NOT Prime Number');
end.
