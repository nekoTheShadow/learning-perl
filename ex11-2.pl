#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

use Time::Moment;

my $now = Time::Moment->now;
my $other = Time::Moment->new(
    year  => $ARGV[0],
    month => $ARGV[1]
);
printf "%d years, %d months, and %d days\n", 
    abs $now->delta_years($other), 
    abs $now->delta_months($other), 
    abs $now->delta_days($other);