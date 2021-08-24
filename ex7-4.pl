#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

while (<STDIN>) {
  chomp;
  if (/\A[A-Z][^A-Z]+/) {
    say "<<< $_ >>>";
  }
}