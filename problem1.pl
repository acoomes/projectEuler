my $j;
for ( $i = 0; $i < 1000; $i++ ) {
	if ( $i % 3 eq 0 or $i % 5 eq 0 ) {
		$j += $i;
	}
}
print $j;