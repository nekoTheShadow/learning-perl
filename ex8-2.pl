#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

while (<>) {
  chomp;
  if (/(a\b)/) {
    print "Matched: |$`<$&>$'|\n";
  } else {
    print "No Match: |$_|\n";
  }
}