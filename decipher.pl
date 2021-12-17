while(<>) {
	chomp;
	@letters = split /,/;
}

foreach $a ('a'...'z') {
 foreach $b ('a'...'z') {
  foreach $c ('a'...'z') {
    $key[0] = ord($a);
    $key[1] = ord($b);
    $key[2] = ord($c);
    $score = 0;
    for ($i = 0; $i <= $#letters; $i++) {
	$out[$i] = chr($letters[$i] ^ $key[$i % 3]);
	$score += $letters[$i] ^ $key[$i % 3];
    }
    $outStr = (join "", @out);
    if ( $outStr =~ /Gospel of John/ ) {
      print "$outStr\n" if $outStr =~ /and/;
      print "$score\n";
    }
  }
 }
}
#foreach $l (@letters) {
#	print "$l\n";
#}
