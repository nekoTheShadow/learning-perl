#!/usr/bin/perl

use v5.10;
use strict;
use warnings;
use autodie;

my $dir = $ENV{"HOME"};
chdir $dir;
exec "ls", "-l" or die "$!";