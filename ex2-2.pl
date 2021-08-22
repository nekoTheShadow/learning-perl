#!/usr/bin/perl

use warnings;

chomp($radius = <STDIN>);
$circumference = $radius * 2 * 3.141592654;
print "$circumference\n";