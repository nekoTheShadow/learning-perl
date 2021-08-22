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

my @fred = qw{1 3 5 7 9};
my $fred_total = total(@fred);
print "This total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines\n";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total\n";