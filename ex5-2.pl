#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

chomp(my @lines = <STDIN>);

say "1234567890" x 2;
foreach (@lines) {
  printf "%20s\n", $_;
}