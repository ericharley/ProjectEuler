use POSIX;

open FILE,"words.txt";

while(<FILE>){
	chomp;
	s/"//g;
	s/ //g;
	@words = split /,/;
	foreach $word (@words) {
		@chars = split //, $word;
		$score = 0;
		foreach $c (@chars) {
			$score += ord($c) - ord('A') + 1;
		}
		if ( triangleNumber($score) ) {
			print "$word,$score,";
			print triangleNumber($score);
			print "\n";
		}
	}
}

sub triangleNumber {

	my ($A) = @_;

	$u = 1/2*( sqrt(1 + 8*$A) - 1);

	return 1 if ( $u - floor($u) == 0);

	return 0;
}
