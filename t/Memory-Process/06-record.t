# Pragmas.
use strict;
use warnings;

# Modules.
use Memory::Process;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Memory::Process->new;
my $ret = $obj->record;
is($ret, '1', 'Get record() return code.');
