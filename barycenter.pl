$Px = 0;
$Py = 0;

while(<>) {
$in = $_;
chomp($in);

($Ax,$Ay,$Bx,$By,$Cx,$Cy) = split /,/, $in;

# Compute vectors        
$v0x = $Cx - $Ax;
$v0y = $Cy - $Ay;
$v1x = $Bx - $Ax;
$v1y = $By - $Ay;
$v2x = $Px - $Ax;
$v2y = $Py - $Ay;

# Compute dot products
$dot00 = dot($v0x, $v0x, $v0y, $v0y);
$dot01 = dot($v0x, $v1x, $v0y, $v1y);
$dot02 = dot($v0x, $v2x, $v0y, $v2y);
$dot11 = dot($v1x, $v1x, $v1y, $v1y);
$dot12 = dot($v1x, $v2x, $v1y, $v2y);

# Compute barycentric coordinates
$invDenom = 1.0 / ($dot00 * $dot11 - $dot01 * $dot01);
$u = ($dot11 * $dot02 - $dot01 * $dot12) * $invDenom;
$v = ($dot00 * $dot12 - $dot01 * $dot02) * $invDenom;

# Check if point is in triangle
if ( ($u > 0) && ($v > 0) && ($u + $v < 1) )
{
	print "1\n";
}
else
{
	print "0\n";
}
}
sub dot {
	my ($ax, $bx, $ay, $by) = @_;
	return ($ax*$bx + $ay*$by);
}
