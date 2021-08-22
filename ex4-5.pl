#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

sub greet {
  state @names;
  my $name = shift;
  if (@names) {
    print "Hi $name! I've seen: @names\n";
  } else {
    print "Hi $name! You are the first one here!\n";
  }
  push @names, $name
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");