#!/usr/bin/perl -w

use strict;
use warnings;
use v5.10;

my $debug = $ENV{'DEBUG'} // 0;
my $ans = int(1 + rand 100);

print "ans=$ans\n" if $debug;

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