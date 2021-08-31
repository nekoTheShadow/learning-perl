#!/usr/bin/perl

use v5.10;
use strict;
use warnings;
use autodie;
use Cwd qw/ getcwd /;

opendir my $dh, getcwd;
while (my $path = readdir $dh) {
    next if ($path eq "." || $path eq "..");
    my ($atime, $mtime) = (stat($path))[8, 9];
    printf "%s %d %d\n", $path, $atime, $mtime;
}
closedir $dh;
