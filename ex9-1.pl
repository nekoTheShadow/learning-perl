#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

my $what = 'fred|barney';

while (<>){
  chomp;
  if (/($what){3}/) {
    print "$`<$&>$'\n";
  }
}