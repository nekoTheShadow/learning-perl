#!/usr/bin/perl

use warnings;

chomp($name = <STDIN>);
chomp($count = <STDIN>);
while ($count-- > 0) {
  print "$name\n"
}