#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

unlink $_ or warn "cannnot unlink $_: $?" foreach (@ARGV);