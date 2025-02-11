use strict;
use warnings;

our $VERSION = '0.000127';

use Test2::Harness::UI;
use Test2::Harness::UI::Config;
use Test2::Harness::UI::Importer;

my ($dsn, $user, $pass, $seed) = @ARGV;

$user ||= '';
$pass ||= '';

srand($seed) if $seed;

my $config = Test2::Harness::UI::Config->new(
    dbi_dsn    => $dsn,
    dbi_user   => $user,
    dbi_pass   => $pass,
);

$SIG{INT} = sub { exit 0 };
$SIG{TERM} = sub { exit 0 };

Test2::Harness::UI::Importer->new(config => $config)->run;
