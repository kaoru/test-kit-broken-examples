use strict;
use warnings;

use Test::Aggregate;

my $dir = shift || die "Usage: $0 t/\n";

my $tests = Test::Aggregate->new({
    dirs => [ $dir ],
});

$tests->run;
