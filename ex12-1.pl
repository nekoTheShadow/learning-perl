#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

foreach (@ARGV) {
  if (-e $_) {
    print  "# $_\n";
    printf "- read   : %s\n", (-r _ ? "OK" : "NG");
    printf "- write  : %s\n", (-w _ ? "OK" : "NG");
    printf "- execute: %s\n", (-x _ ? "OK" : "NG");
  } else {
    print  "# $_ ... NOT EXISTS\n";
  }
}