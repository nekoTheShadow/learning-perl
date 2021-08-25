#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

while (<>) {
  chomp;
  if (/\s+\Z/) {
    print "Matched: |$_#|\n";
  } else {
    print "No Match: |$_|\n";
  }
}