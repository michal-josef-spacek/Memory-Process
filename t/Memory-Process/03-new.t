use strict;
use warnings;

use Memory::Process;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Memory::Process->new;
isa_ok($obj, 'Memory::Process');
