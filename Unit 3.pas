program Unit3;
var
cuts, dimensions: int64;

function factorial(n: int64): int64;
begin
	if (n <= 1)
	then factorial := 1
	else factorial := n * factorial(n - 1);
end;

function combination(n, r: int64): extended;
var
	numer: int64 = 0;
	denom: int64 = 0;
begin
	numer := factorial(n);
	denom := (factorial(r) * factorial(n - r));
	combination := (numer / denom);
end;

function hypercake(n, k: int64): extended;
var
	cur: int64 = 0;
	result: extended = 0;
begin
	while cur <= k do
	begin
		result := result + combination(n, cur);
		cur := cur + 1;
	end;
	hypercake := result;
end;

begin 
	writeln('Enter Number Of Cuts: ');
	readln(cuts);
	writeln('Enter Number of Dimensions: ');
	readln(dimensions);
	
	writeln(hypercake(cuts, dimensions));
end.
