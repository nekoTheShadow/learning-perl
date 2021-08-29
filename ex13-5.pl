#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

use File::Basename;
use File::Spec;

@ARGV == 2 or die "Usage: mv SOURCE DEST";
my ($src, $dst) = @ARGV;

if (-d $dst) {
    my $basename = basename $src;
    $dst = File::Spec->catfile($dst, $basename);
}
rename $src, $dst or die "cannnot rename $src --> $dst: $!";