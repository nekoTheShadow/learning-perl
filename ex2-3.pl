#!/usr/bin/perl

use warnings;

chomp($radius = <STDIN>);
if ($radius <= 0) {
  print "0\n"
} else {
  $circumference = $radius * 2 * 3.141592654;
  print "$circumference\n";
}
