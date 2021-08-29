#!/usr/bin/perl

use v5.10;
use strict;
use warnings;
use autodie;

opendir my $dh, ".";
foreach (readdir $dh) {
    next if ! -l $_;
    printf "%s ---> %s\n", $_, readlink $_;
}
closedir $dh;