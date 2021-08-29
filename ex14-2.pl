#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

my %last_name = qw{
    fred flintstone
    Wilma Flintstone
    Barney Rubble
    betty rubble
    Bamm-Bamm Rubble
    PEBBLES FLINTSTONE
};

my @keys = sort {"\L$last_name{$a}" cmp "\L$last_name{$b}" or "\L$a" cmp "\L$b"} keys %last_name;
foreach my $key (@keys) {
    printf "%s %s\n", $key, $last_name{$key};
}