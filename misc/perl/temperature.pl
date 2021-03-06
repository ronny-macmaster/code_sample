#!/usr/bin/perl
# temperature.pl
# converts farenheit to celsius
# 
# Author: Ronald Macmaster
# Date: 03/16/18

$prompt = "Enter a temperature in farenheit: ";

print $prompt;
while ($farenheit = <>) {
  chomp($farenheit);
  if ($farenheit =~ /^-?[0-9]+\.?[0-9]*$/) {
    $celsius = ($farenheit - 32) * (5.0 / 9.0);
    printf("%.2fF is %.2fC\n", $farenheit, $celsius);
  } else {
    print "I don't understand '${farenheit}'\n";
  }
  print $prompt;
}
print "\n";
