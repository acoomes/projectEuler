# 2520 is the smallest number that can be divided by each of the numbers 
# from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all 
# of the numbers from 1 to 20?

my $i;
my $found = 0;

# As long as found is false, iterate $i by 2520. In each iteration,
# assume found is true and check to see if $i is  evenly divisible 
# by numbers 19 through 11. If it is, set $found to true and break.
while ( !$found ) {
    $i += 2520;
    $found = 1;
    for ( my $n = 19; $n >= 11 ; $n-- ) {
        if ( $i % $n ) {
            $found = 0;
            last;
        }
    }
}

print $i;