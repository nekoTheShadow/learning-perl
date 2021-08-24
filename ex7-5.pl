#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

while (<STDIN>) {
  chomp;
  if (/(.)\1/) {
    say "<<< $_ >>>";
  }
}