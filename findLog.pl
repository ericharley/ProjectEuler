$max_v = 0;
$max_l = 0;
$i = 1;
while(<>) {
  chomp;
  ($b,$a) = split /,/;
  $v = $a*log($b);
  if ( $v > $max_v ) {
    $max_v = $v;
    $max_l = $i;
    $max_b = $b;
    $max_a = $a;
  }
  $i++;
}
print "$max_l : $max_b,$max_a\n";
