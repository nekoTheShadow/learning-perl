#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

$ENV{ZERO} = 0;
$ENV{EMPTY} = "";
$ENV{UNDEF} = undef;

my $width = 0;
foreach my $key (keys %ENV) {
  $width = length $key if $width < length $key;
}
foreach my $key (sort keys %ENV) {
  printf "%-${width}s = %s\n", $key, ($ENV{$key} // 'UNDEF');
}