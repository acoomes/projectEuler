# The sum of the squares of the first ten natural numbers is,

# 1^2 + 2^2 + ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)^2 = 552 = 3025

# Hence the difference between the sum of the squares of the first 
# ten natural numbers and the square of the sum is 3025 - 385 = 2640.

# Find the difference between the sum of the squares of the first 
# one hundred natural numbers and the square of the sum.

my $sumOfSquares;
my $squareOfSums;
my $difference;

# Loop from 100 to 1, adding each squared iteration of $i to
# $sumOfSquares.
for ( my $i = 100; $i > 0; $i-- ) {
    $sumOfSquares += $i ** 2;
}

# Loop from 100 to 1, adding each iteration of $i to $squareOfSums.
# Then square $squareOfSums.
for ( my $i = 100; $i > 0; $i-- ) {
    $squareOfSums += $i;
}
$squareOfSums = $squareOfSums ** 2;

$difference = $squareOfSums - $sumOfSquares;

print "\n  $difference\n";