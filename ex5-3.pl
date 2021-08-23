#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

chomp(my @lines = <STDIN>);
my $n = shift @lines;

my @digits;
for (my $i = 1; $i <= $n; $i++) {
  push @digits, $i % 10;
}

say @digits;
foreach (@lines) {
  printf "%${n}s\n", $_;
}