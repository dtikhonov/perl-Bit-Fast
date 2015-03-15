use strict;
use warnings;

use Benchmark qw(timethese);
use Bit::Fast qw(:all);

timethese(3_000_000, {
    'pack/unpack' => sub { unpack '%32b*', pack 'I', 39132 },
    'popcountl'   => sub { popcount(39132) },
    'popcount'    => sub { popcount(39132) },
});
