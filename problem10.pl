# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

my $i = 2;
my $sum;

while( $i < 2000000 ) {
    if ( primeChecker( $i ) ) {
        $sum += $i;
    }
    $i++;
}

print "\n  $sum\n";

# Checks whether a given number is prime.
sub primeChecker {
    my $numToCheck = shift;
    my $isPrime = 1;

    # Loop from 2 to the square root of $numToCheck.
    # If $numToCheck is evenly divisible by an 
    # iteration return false.
    for ( my $i = 2; $i <= sqrt $numToCheck; $i++ ) {
        if ( $numToCheck % $i eq 0 ) {
            $isPrime = 0;
            last;
        }
    }
    return $isPrime;
}
