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
	my @report = ($report_full[-2], $report_full[-1]);
	return wantarray ? @report : (join "\n", @report);
}

1;

__END__
