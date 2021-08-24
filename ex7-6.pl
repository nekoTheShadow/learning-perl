#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

while (<STDIN>) {
  chomp;
  if (/wilma/ && /fred/) {
    say "<<< $_ >>>";
  }
}