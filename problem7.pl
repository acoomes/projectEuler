# By listing the first six prime numbers: 
# 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10,001st prime number?

my $finalPrime;
my $numOfPrimes = 0;
my $i = 2;

# Loop over $i, checking each iteration for primes. Each time
# a prime is found, iterate $numOfPrimes. Once 10001 primes 
# have been found, set the last one to $finalPrime.
while( $numOfPrimes < 10001 ) {
    if ( primeChecker( $i ) ) {
        $numOfPrimes++;
        $finalPrime = $i;
    }
    $i++;
}

print "\n  $finalPrime\n";

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