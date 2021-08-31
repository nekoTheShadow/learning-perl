#!/usr/bin/perl

use v5.10;
use strict;
use warnings;
use autodie;
use Cwd qw/ getcwd /;

sub yyyymmdd {
    my $epoch = shift;
    my ($mday, $mon, $year) = (localtime $epoch)[3, 4, 5];
    sprintf "%04d-%02d-%02d", $year+1900, $mon+1, $mday;
}

opendir my $dh, getcwd;
my @msgs = map {
    my ($atime, $mtime) = (stat($_))[8, 9];
    sprintf "%s %s %s", $_, yyyymmdd($atime), yyyymmdd($mtime);
} grep {
    $_ ne "." && $_ ne "..";
} readdir $dh;
say $_ foreach @msgs;
closedir $dh;
