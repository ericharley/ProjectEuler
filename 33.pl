foreach $a (1..9) {
 foreach $b (0..9) {
  foreach $c (1..9) {
   foreach $d (0..9) {

	next if ($a == $c && $b == $d);
	next if ($b == 0 && $d == 0);

	$u = 10.0*$a + $b;
	$l = 10.0*$c + $d;

	$r = $u/$l;

	next if $r > 1.0;

	if ($a == $c) {
		$u = $b;
		$l = $d;
		next if $l == 0;
		$rp = $u/$l;
		print "($a,$b,$c,$d)\n" if ( abs($r - $rp) < 0.001 );
	}
	if ($a == $d) {
		$u = $b;
		$l = $c;
		next if $l == 0;
		$rp = $u/$l;
		print "($a,$b,$c,$d)\n" if ( abs($r - $rp) < 0.001 );
	}
	if ($b == $c) {
		$u = $a;
		$l = $d;
		next if $l == 0;
		$rp = $u/$l;
		print "($a,$b,$c,$d)\n" if ( abs($r - $rp) < 0.001 );
	}
	if ($b == $d) {
		$u = $a;
		$l = $c;
		next if $l == 0;
		$rp = $u/$l;
		print "($a,$b,$c,$d)\n" if ( abs($r - $rp) < 0.001 );
	}


   }
  }
 }
}
