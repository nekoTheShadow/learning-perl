#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

my %first_names = (
  "fred" => "flintstone",
  "barney" => "rubble",
  "wilma" => "flintstone"
);

chomp(my $last_name = <STDIN>);
say $first_names{$last_name};