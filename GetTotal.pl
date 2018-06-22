$val = `env LC_ALL=C curl -s -o /dev/null -w '%{time_total}' http://fsfe.org`;
$val = int(1000*$val);
print "0\n";
print "$val\n";
print "0\n";
print "0\n";
