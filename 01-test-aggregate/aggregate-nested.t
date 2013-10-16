use strict;
use warnings;

use Test::Aggregate::Nested;

my $dir = shift || die "Usage: $0 t/\n";

my $tests = Test::Aggregate::Nested->new({
    dirs => [ $dir ],
});

$tests->run;
