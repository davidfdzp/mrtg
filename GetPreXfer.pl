$val = `env LC_ALL=C curl -s -o /dev/null -w '%{time_pretransfer}' http://fsf.org`;
$val = int(1000*$val);
print "0\n";
print "$val\n";
print "0\n";
print "0\n";
