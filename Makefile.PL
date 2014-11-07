# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'Memory process reporting.';
author 'Michal Spacek <skim@cpan.org>';
license 'bsd';
name 'Memory-Process';
readme_from 'Process.pm';
requires 'Memory::Usage' => 0;
requires 'perl' => '5.6.0';
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=Memory-Process';
resources 'homepage' => 'https://github.com/tupinek/Memory-Process';
resources 'repository' => 'git://github.com/tupinek/Memory-Process';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.05;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.02';

# Run.
WriteAll();
