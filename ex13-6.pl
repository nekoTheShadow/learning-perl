#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

use File::Basename;
use File::Spec;

@ARGV == 2 or die "Usage: link SOURCE DEST";
my ($src, $dst) = @ARGV;

if (-d $dst) {
    my $basename = basename $src;
    $dst = File::Spec->catfile($dst, $basename);
}
link $src, $dst or die "cannnot link $src --> $dst: $!";