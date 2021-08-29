#!/usr/bin/perl

use v5.10;
use strict;
use warnings;
use autodie;

my $dir = (@ARGV == 0) ? $ENV{"HOME"} : $ARGV[0];
opendir my $dh, $dir;
say $_ foreach (sort readdir $dh);