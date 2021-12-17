$n = $ARGV[0];

$np = $n;
while ( euclid($np, 2) > 1 ) {
 $np /= 2;
}
while ( euclid($np, 5) > 1 ) {
 $np /= 5;
}
print "$n,$np\n";
if (0) {
#for ($n = 2; $n < 1000; $n++) {
  my %r = {};
  $m = 1;
  $r{"$m"} = 0;
  for ($d = 1; $d < $n; $d++) {
    $m = (10*$m) % $n;
    if ( exists $r{"$m"} ) {
	$s = $r{$m};
	$t = $d - $r{$m};
	print "$n,$d,$r{$m}\n";
	print "$n,$s,$t\n";
	last;
    }
    $r{"$m"} = $d;
  }
#}
}
sub euclid {
   my( $a, $b ) = @_;
 return ($b) ? euclid( $b, $a % $b ) : $a;
}
