#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

while (<>) {
  chomp;
  if (/(?<word>\b\w*a\b)(?<next>.{0,5})/) {
    print "Matched: |$`<$&>$'|\n";
    print "'word' contains '$+{word}'\n";
    print "'next' contains '$+{next}'\n";
  } else {
    print "No Match: |$_|\n";
  }
}