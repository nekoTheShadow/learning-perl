#!/usr/bin/perl

# This is a test.
# is

use v5.10;
use strict;
use warnings;

chomp(my $target = <STDIN>);
chomp(my $search = <STDIN>);

my $pos = -1;
say $pos while (($pos = index $target, $search, $pos+1) != -1);