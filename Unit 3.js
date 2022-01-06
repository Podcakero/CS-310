const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

cuts = 0;

readline.question('Number of cuts: ', (n) => 
{
	cuts = n;
	//readline.close();
	
	readline.question('Number of dimensions: ', (k) =>
	{
		console.log(hypercake(n, k));
		readline.close();
	});
});

function hypercake(n, k)
{
	function combinations(n, r)
	{
		function factorial(n)
		{
			if (n <= 1)
			{
				return 1;
			}
			return n * factorial(n - 1);
		}
		return (factorial(n))/(factorial(r) * factorial(n - r)); // n!/(r!(n-r)!)
	}
	
	total = 0;
	
	for (i = 0; i <= k; i++)
	{
		total += combinations(n, i);
	}
	
	return total;
}

