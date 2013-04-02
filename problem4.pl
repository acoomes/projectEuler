# A palindromic number reads the same both ways. The largest palindrome 
# made from the product of two 2-digit numbers is 9009 = 91  99.

# Find the largest palindrome made from the product of two 3-digit numbers.

my $a;
my $b;
my $product;
my $largestPalindrome;

# Loop $a and $b down to 100.
for ( $a = 999; $a > 99; $a-- ) {
    for ( $b = 999; $b > 99; $b-- ) {
        $product = $a * $b;
        # If $product is a palindrome, check to see whether it is larger than 
        # $largestPalindrome. If true, set it as $largestPalindrome.
        if ( $product eq reverse $product and $product > $largestPalindrome ) {
            $largestPalindrome = $product;
        }
    }
}

print "\n  $largestPalindrome is the largest palindrome.\n";