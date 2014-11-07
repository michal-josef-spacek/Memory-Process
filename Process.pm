package Memory::Process;

# Pragmas.
use base qw(Memory::Usage);
use strict;
use warnings;

# Version.
our $VERSION = 0.01;

# Get report.
sub report {
	my $self = shift;
	my $report = $self->SUPER::report;
	my @report_full = split m/\n/ms, $report;
	my @report = ($report_full[0], $report_full[-2], $report_full[-1]);
	return wantarray ? @report : (join "\n", @report);
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

 Memory::Process - Perl class to determine actual memory usage.

=head1 SYNOPSIS

 use Memory::Process;
 my $m = Memory::Process->new(%params);
 $m->dump;
 $m->record($message, $pid);
 my @report = $m->report;
 my $report = $m->report;
 $m->state;

=head1 METHODS

=over 8

=item C<new(%params)>

 Constructor.

=item C<dump()>

 TODO

=item C<record($message[, $pid])>

 Get report.
 In scalar context returns string with report.
 In array context returns array of report lines.
 First line is title.

=item C<report()>

 TODO

=item C<state()>

 TODO

=back

=head1 EXAMPLE

 # Pragmas.
 use strict;
 use warnings;

 # Modules.
 use Memory::Process;

 # Object.
 my $m = Memory::Process->new;

 # Example process.
 $m->record("Before my big method");
 my $var = ('foo' x 100);
 sleep 1;
 $m->record("After my big method");
 sleep 1;
 $m->record("End");

 # Print report.
 print $m->report."\n";

 # Output like:
 #   time    vsz (  diff)    rss (  diff) shared (  diff)   code (  diff)   data (  diff)
 #      1  19120 (     0)   2464 (     0)   1824 (     0)      8 (     0)   1056 (     0) After my big method
 #      2  19120 (     0)   2464 (     0)   1824 (     0)      8 (     0)   1056 (     0) End

=head1 DEPENDENCIES

L<Memory::Usage>.

=head1 SEE ALSO

L<Memory::Stats>,
L<Memory::Usage>.

=head1 REPOSITORY

L<https://github.com/tupinek/Memory-Process>

=head1 AUTHOR

Michal Špaček L<mailto:skim@cpan.org>

L<http://skim.cz/>

=head1 LICENSE AND COPYRIGHT

BSD 2-Clause License

=head1 VERSION

0.01

=cut
