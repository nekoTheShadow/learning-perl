#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

sub total {
  my $sum = 0;
  foreach (@_) {
    $sum += $_
  }
  $sum
}

print total(1..1000) . "\n"