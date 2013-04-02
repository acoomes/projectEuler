# A palindromic number reads the same both ways. The largest palindrome 
# made from the product of two 2-digit numbers is 9009 = 91  99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# Palindrome Checker
# Splits a scalar into an array, reverses it and joins it back into a scalar.
sub palindromeChecker {
    my $stringToCheck = shift;
    my $isPalindrome = 0;
    my @splitArray = split( "", $stringToCheck );
    my @reversedArray = reverse( @splitArray );
    my $reversedString = join( "", @reversedArray );
    if ( $reversedString eq $stringToCheck ) {
        $isPalindrome = 1;
    }
    return $isPalindrome;
}