#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

@ARGV or die "Usage: [paths]";

my $oldest_file = "";
my $oldest_time = -1;

foreach my $file (@ARGV) {
    my $time = -M $file;
    if ($oldest_time < $time) {
        $oldest_time = $time;
        $oldest_file = $file;
    }
}

printf "%s: %d days ago\n", $oldest_file, $oldest_time;

