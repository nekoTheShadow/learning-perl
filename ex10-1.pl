#!/usr/bin/perl -w

use strict;
use warnings;

my $ans = int(1 + rand 100);
while (1) {
  chomp(my $x = <STDIN>);
  last if ($x eq "quit" || $x eq "exit" || $x eq " ");

  if ($x == $ans) {
    print "OK\n";
    last;
  } elsif ($x < $ans) {
    print "Too low\n";
  } else { # x > ans
    print "Too high\n";
  }
}