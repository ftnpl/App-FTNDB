package FTNDB;
use App::Cmd::Setup -app;

=head1 NAME

FTNDB - Administration of SQL databases for Fidonet/FTN processing.

=head1 VERSION

Version 0.34

=cut

our $VERSION = '0.34';

=head1 DESCRIPTION

This is the top level Perl extension for the administration of databases for
Fidonet/FTN related processing. The SQL database engine is one for which a
DBD module exists, defaulting to SQLite.


=head1 CONFIGURATION

See L<FTNDB::Config> for information about configuration of the
application.


=head1 EXAMPLES

Given that $CFGFILE is a configuration file, the following command line can be
used to create an FTN Nodelist table in that database file:

C<ftndbadm -c $CFGFILE -v create table Nodelist> 


=head1 AUTHOR

Robert James Clay, C<< <jame at rocasa.us> >>


=head1 BUGS

Please report any bugs or feature requests via the web interface at
L<https://sourceforge.net/p/ftnpl/ftndb/tickets/>. I will be notified,
and then you'll automatically be notified of progress on your bug
as I make changes.

Note that you can also report any bugs or feature requests to
C<bug-ftn-database at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=FTN-Database>;
however, the FTN-Database Issue tracker is preferred.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc FTNDB

You can also look for information at:

=over 4

=item * FTN-Database issue tracker

L<https://sourceforge.net/p/ftnpl/ftndb/tickets/>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=FTN-Database>

=item * Search CPAN

L<http://search.cpan.org/dist/FTN-Database>

=back


=head1 SEE ALSO

 L<ftndbadm>, L<ftndb-admim>, L<ftndb-nodelist>, L<FTNDB>, L<FTNDB::Command::create>,
  L<FTNDB::Command::drop>, L<FTN::Database>, L<FTNDB::Nodelist>

=head1 COPYRIGHT & LICENSE

Copyright 2012 Robert James Clay, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1;
