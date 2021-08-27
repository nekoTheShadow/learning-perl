#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.024} };
say join "\n", sort keys %modules;