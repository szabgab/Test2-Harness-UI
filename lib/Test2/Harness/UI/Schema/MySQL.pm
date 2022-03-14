package Test2::Harness::UI::Schema::MySQL;
use utf8;
use strict;
use warnings;
use Carp();

our $VERSION = '0.000117';

# DO NOT MODIFY THIS FILE, GENERATED BY author_tools/regen_schema.pl


Carp::confess("Already loaded schema '$Test2::Harness::UI::Schema::LOADED'") if $Test2::Harness::UI::Schema::LOADED;

$Test2::Harness::UI::Schema::LOADED = "MySQL";

require Test2::Harness::UI::Schema;

1;
