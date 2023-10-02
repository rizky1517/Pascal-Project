program primeNumber;
uses crt;
var
    number, i : integer;
    isPrime : boolean;
begin
    clrscr;
    isPrime := true;

    write('Input Number : '); readln(number);

    if (number <= 1) then
        isPrime := false
    else
        for i := 2 to number-1 do
        begin
            if ((number mod i) = 0) then
            begin
                isPrime := false;
                break;
            end
        end;

    if (isPrime) then
		begin
			write(number, ' Is Prime Number')
		end
	else
 		begin
	 		write(number,' Is NOT Prime Number')
		end;
end.
