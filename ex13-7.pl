#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

use File::Basename;
use File::Spec;

my $symlink = $ARGV[0] eq "-s";
shift @ARGV if $symlink;

@ARGV == 2 or die "Usage: link [-s] SOURCE DEST";
my ($src, $dst) = @ARGV;

if (-d $dst) {
    my $basename = basename $src;
    $dst = File::Spec->catfile($dst, $basename);
}
if ($symlink) {
    symlink $src, $dst or die "cannnot symlink $src --> $dst: $!";
} else {
    link $src, $dst or die "cannnot link $src --> $dst: $!";
}
