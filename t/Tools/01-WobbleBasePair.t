use v6;
BEGIN { @*INC.push('lib') };

use RakudoBio::Tools::WobbleBasePair;
use Test;
plan 3;

my $wp = RakudoBio::Tools::WobbleBasePair.new();
is $wp.readable('A'), 'U', '1 ok ';
dies_ok { $wp.readable('AA')}, '2 not ok';
is $wp.readable('AGG'), 'U', '3  ok';

