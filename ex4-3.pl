#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

sub above_average {
  my $sum = 0;
  foreach (@_) {
    $sum += $_
  }

  my $average = $sum / @_;
  my @answers;
  foreach (@_) {
    if ($average < $_) {
      push @answers, $_;
    }
  }
  @answers
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be 100)\n";