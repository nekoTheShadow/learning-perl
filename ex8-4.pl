#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

while (<>) {
  chomp;
  if (/(?<word>\b\w*a\b)/) {
    print "Matched: |$`<$&>$'|\n";
    print "'word' contains '$+{word}'\n";
  } else {
    print "No Match: |$_|\n";
  }
}