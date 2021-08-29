#!/usr/bin/perl

# 17 1000 04 1.50 3.14159 -10 1.5 4 2001 90210 666

use v5.10;
use strict;
use warnings;

chomp(my $line = <STDIN>);
my @digits = sort {$a <=> $b} (split / /, $line);

my $maxlen = 0;
foreach (@digits) {
    my $len = length $_;
    $maxlen = $len if $maxlen < $len;
}

foreach (@digits) {
    printf "%${maxlen}s\n", $_;
}