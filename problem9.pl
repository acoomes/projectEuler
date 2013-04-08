# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# 
# a^2 + b^2 = c^2
# 
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# This goes ABOVE your code.
use Time::HiRes qw/time/;
my $startTime = time;

my $a;
my $b;
my $c;
my $sum;
my $product;
my $aAndB;
my $found = 0;

# Loop through $a and $b starting at their lowest possible values and going
# up to 1000. Set $c to the square root of $a^2 plus $b^2 If a Pythagorean 
# triplet is found and the sum of the triplet is 1000, print the product of 
# the triplet and break.
$sum = $a + $b + $c;
$product = $a * $b * $c;
for ( $a = 1; $a <= 1000; $a++ ) {
    for( $b = $a + 1; $b <= 1000; $b++ ) {
        $aAndB = $a ** 2 + $b ** 2;
        $c = sqrt $aAndB;
        $sum = $a + $b + $c;
        if ( pythagoreanChecker( $a, $b, $c ) && $sum eq 1000 ) {
            $product = $a * $b * $c;
            print "\n  $product\n";
            $found = 1;
            last;
        }
    }
}

# Checks 3 parameters to see if they are a pythagorean triplet.
sub pythagoreanChecker {
    my $a = shift;
    my $b = shift;
    my $c = shift;
    my $aAndB = $a ** 2 + $b ** 2;
    if ( $c ** 2 eq $aAndB ) {
        return 1;
    } else {
        return 0;
    }
}

# This goes BELOW your code.
my $totalTime = time - $startTime;
print "\n  Ran in $totalTime\n";