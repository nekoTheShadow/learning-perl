#!/usr/bin/perl

use warnings;

chomp(@names = <STDIN>);
foreach $name (sort @names) {
  print "$name\n";
}