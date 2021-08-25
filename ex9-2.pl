#!/usr/bin/perl

use v5.10;
use strict;
use warnings;
use autodie;

my $src = $ARGV[0];
if (! defined $src) {
  die "Usage: $0 filename";
}

my $dst = $src . '.out';
open my $in, '<', $src;
open my $out, '>', $dst;

while (<$in>) {
  s/fred/Larry/gi;
  print $out $_;
}

close $in;
close $out;