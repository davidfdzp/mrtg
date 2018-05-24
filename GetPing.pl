$ping_str = `tail -n 3 /tmp/speedlog.txt`;
$val = (split(/ /,$ping_str))[1];
$val = int($val);
print "0\n";
print "$val\n";
print "0\n";
print "0\n";
