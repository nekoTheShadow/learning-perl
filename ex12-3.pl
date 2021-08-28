#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

foreach (@ARGV) {
    say $_ if -r -w $_;
}

