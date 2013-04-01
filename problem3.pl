# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

my $largestPrimeFactor;
my $bigNumber = 600851475143;

# Loop from 1 to half of $bigNumber, iterating by 2.
# If an iteration is both prime and a factor of 
# $bigNumber, set it as $largestPrimeFactor.
for ( my $i = 1; $i <= sqrt $bigNumber; $i += 2 ) {
    if ( primeChecker( $i ) and $bigNumber % $i eq 0 ) {
        $largestPrimeFactor = $i;
    }
}

# Checks whether a given number is prime.
sub primeChecker {
    my $numToCheck = shift;
    my $isPrime = 1;

    # Loop from 1 to the square root of $numToCheck.
    # If $numToCheck is evenly divisible by an 
    # iteration return false.
    for ( my $i = 2; $i <= sqrt $numToCheck; $i++ ) {
        if ( $numToCheck % $i == 0 ) {
            $isPrime = 0;
            last;
        }
    }
    return $isPrime;
}

# Print the largest prime factor of bigNumber.
print "\n  $largestPrimeFactor\n";