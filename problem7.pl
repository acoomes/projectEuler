# By listing the first six prime numbers: 
# 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10,001st prime number?

# Checks whether a given number is prime.
sub primeChecker {
    my $numToCheck = shift;
    my $isPrime = 1;

    # Loop from 1 to the square root of $numToCheck.
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