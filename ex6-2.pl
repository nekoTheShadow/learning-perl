#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

my %counter;
while (<STDIN>) {
  chomp;
  $counter{$_}++;
}

foreach my $name (sort keys %counter) {
  printf "%s %d\n", $name, $counter{$name};
}