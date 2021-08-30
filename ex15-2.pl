#!/usr/bin/perl

use v5.10;
use strict;
use warnings;
use autodie;

open STDOUT, "> ls.out";
open STDERR, "> ls.err";

my $dir = $ENV{"HOME"};
chdir $dir;
exec "ls", "-l" or die "$!";