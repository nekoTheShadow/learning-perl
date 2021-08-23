#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

my @lines;
while (<>) {
  chomp;
  push @lines, $_;
}
my @reversed_lines = reverse @lines;
foreach (@reversed_lines) {
  say $_;
}