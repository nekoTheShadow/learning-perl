#!/usr/bin/perl

use warnings;

@names = qw(fred betty barney dino wilma pebbles bamm-bamm);
chomp(@indexes = <STDIN>);
foreach (@indexes) {
  print "$names[$_-1]\n";
}