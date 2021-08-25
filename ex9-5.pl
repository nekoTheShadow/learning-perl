#!/usr/bin/perl -w

use v5.10;
use strict;
use warnings;

my %targets;
foreach(@ARGV) {
  $targets{$_} = 1;
}

while (<>) {
  delete %targets{$ARGV} if /\A## Copyright/;
}

@ARGV = keys %targets;
$^I = ".bak";
while (<>) {
  $_ .= "## Copyright (C) 2021 Hajime Nakamura\n" if /\A#!/;
  print;
}