program checkPalindrome;
uses crt;
function isPalindrome(word : string):boolean;
    var
        wordLength, i : integer;
    begin
        isPalindrome := true;
        wordLength := length(word);

        for i := 1 to wordLength do
        begin
            if (word[i] <> word[wordLength]) then
            begin
                isPalindrome := false;
                exit;
            end;
            wordLength := wordLength - 1;
        end;
    end;

var
    word : string;
begin
    clrscr;
    write('Input word : '); readln(word);

    if (isPalindrome(word)) then
		write(word, ' Is Palindrome')
	else
		write(word,' Is NOT Palindrome');
end.
