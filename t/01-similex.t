use Test::More tests => 8;
use strict;
use warnings;
use String::Similex;

is( similex('linux'), similex('|imux'), 'linux ~~ |imux' );
is( similex('CISCO'), similex('C15CO'), 'CISCO ~~ C15CO' );
is( similex('CISCO'), similex('ciscu'), 'CISCO ~~ C15CO' );
is( similex('ELITE'), similex('e1it3'), 'ELITE ~~ e1it3' );
is( similex('elite'), similex('e1it3'), 'elite ~~ e1it3' );

isnt( similex('ELITE'), similex('e1i13'), 'ELITE no ~~ e1i13' );

my %gandalf;

$gandalf{similex($_)} = 1 for (qw(gandalf ganda1f gggandalf));

my $how_many_keys = scalar keys %gandalf;
my ($key)         = keys %gandalf;
is( $how_many_keys, 1 , "'gandalf ganda1f gggandalf' has only one similex code" );

SKIP: {
    skip 'gandalf test failed', 1 unless $how_many_keys eq 1;

    is( $key, similex('gandalf'), "Array with all the same similex");
}
