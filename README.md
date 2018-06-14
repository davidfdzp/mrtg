# MRTG configuration files and scripts

Install MRTG (https://oss.oetiker.ch/mrtg)

Setup Net-SNMP agent (snmpd) on your computer (if you want), e.g. as explained here:
https://kb.op5.com/display/HOWTOs/Configure+a+Linux+server+for+SNMP+monitoring

Generate MRTG configuration files (or adapt the ones I have in this repository):
https://fr.opensuse.org/Statistiques_avec_mrtg

If you want to monitor with MRTG something which does not provide data via SNMP, you can use some external program to do the data gathering:
http://www.homepages.ed.ac.uk/bbyers/config.html

NTP monitoring with MRTG:
http://www.satsignal.eu/ntp/NTPandMRTG.html

Monitor your Internet access quality with speedtest CLI:
https://www.howtoforge.com/tutorial/check-internet-speed-with-speedtest-cli-on-ubuntu/#how-to-test-internet-connection-speed-with-speedtestcli

## Monitor your Internet access speed each two hours on the minute 30

crontab -e

30 */2 * * *  /usr/local/bin/speedtest-cli --simple >> /tmp/speedlog.txt

## Launch MRTG with two configurations also with crontab

crontab -e

*/30 * * * *  mrtg /root/mrtg.cfg

*/30 * * * * mrtg /root/mrtg_speedtest.cfg

Take into account that MRTG rateup will put 'unknown' or zero if it doesn’t get more than 50% of the samples for a given 5 minutes interval: http://mrtg.oetiker.narkive.com/X44tptJ7/mrtg-intermittently-recording-zero-values-instead-of-valid-values
