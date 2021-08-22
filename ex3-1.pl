#!/usr/bin/perl

use warnings;

@lines = <STDIN>;
@reversed_lines = reverse @lines;
foreach (@reversed_lines) {
  print;
}