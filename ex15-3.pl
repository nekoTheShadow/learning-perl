#!/usr/bin/perl

use v5.10;
use strict;
use warnings;
use autodie;

my @token = split / /, `date`;
my $weekday = $token[0];
if ($weekday eq "Sat" or $weekday eq "Sun") {
    say "go play";
} else {
    say "get to work";
}
