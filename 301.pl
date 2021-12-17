#!/usr/bin/perl

$e = 30;
for ($n = 1; $n <= 2**$e; $n++)
{
	$a = $n;
	$b = 2*$n;
	$c = 3*$n;

	$s = $a ^ $b ^ $c;
	$w++ if $s == 0;
}
print "$w\n";
