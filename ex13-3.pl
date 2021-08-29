#!/usr/bin/perl

use v5.10;
use strict;
use warnings;
use autodie;

my $dir = (@ARGV == 0) ? $ENV{"HOME"} : $ARGV[0];
chdir $dir or die "cannot chdir to $dir: $!";
say $_ foreach (sort <* .*>);