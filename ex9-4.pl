#!/usr/bin/perl -w

use v5.10;
use strict;
use warnings;

$^I = ".bak";
while (<>) {
  $_ .= "## Copyright (C) 2021 Hajime Nakamura\n" if /\A#!/;
  print;
}