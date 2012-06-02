package FTN::Database::Nodelist;

use warnings;
use strict;
use Carp qw( croak );

=head1 NAME

FTN::Database::Nodelist - Fidonet/FTN Nodelist SQL Database operations.

=head1 VERSION

Version 0.32

=cut

our $VERSION = '0.32';

=head1 DESCRIPTION

FTN::Database::Nodelist is a Perl module containing common nodelist related subroutines
for Fidonet/FTN Nodelist related processing on a Nodelist table in an SQL Database. The
SQL database engine is one for which a DBD module exists, defaulting to SQLite.

=head1 EXPORT

The following functions are available in this module:  define_nodelist_table(),
drop_nodelist_table(), ftnnode_index_fields(), remove_ftn_domain().

=head1 FUNCTIONS

=head2 define_nodelist_table

Syntax:  define_nodelist_table($db_handle, $table_name, $db_type);

Create an FTN Nodelist table in an SQL database being used for Fidonet/FTN
processing, where $db_handle is an existing open database handle, $table_name
is the name of the table to be created, and $db_type is the type of database.

=cut

sub define_nodelist_table {

    my $table_fields = '';

    $table_fields  = "type      VARCHAR(6) DEFAULT '' NOT NULL, ";
    $table_fields .= "zone      SMALLINT  DEFAULT '1' NOT NULL, ";
    $table_fields .= "net       SMALLINT  DEFAULT '1' NOT NULL, ";
    $table_fields .= "node      SMALLINT  DEFAULT '1' NOT NULL, ";
    $table_fields .= "point     SMALLINT  DEFAULT '0' NOT NULL, ";
    $table_fields .= "region    SMALLINT  DEFAULT '0' NOT NULL, ";
    $table_fields .= "name      VARCHAR(48) DEFAULT '' NOT NULL, ";
    $table_fields .= "location  VARCHAR(48) DEFAULT '' NOT NULL, ";
    $table_fields .= "sysop     VARCHAR(48) DEFAULT '' NOT NULL, ";
    $table_fields .= "phone     VARCHAR(32) DEFAULT '000-000-000-000' NOT NULL, ";
    $table_fields .= "baud      CHAR(6) DEFAULT '300' NOT NULL, ";
    $table_fields .= "flags     VARCHAR(128) DEFAULT ' ' NOT NULL, ";
    $table_fields .= "domain    VARCHAR(8) DEFAULT 'fidonet' NOT NULL, ";
    $table_fields .= "ftnyear   SMALLINT  DEFAULT '0' NOT NULL, ";
    $table_fields .= "yearday   SMALLINT  DEFAULT '0' NOT NULL, ";
    $table_fields .= "source    VARCHAR(16) DEFAULT 'local' NOT NULL, ";
    $table_fields .= "updated   TIMESTAMP DEFAULT 'now' NOT NULL ";

    return($table_fields);

}

=head2 ftnnode_index_fields

Syntax:  ftnnode_index_fields();

This is a function that returns a string containing a comma separated list of
the fields that are intended for use in creating the ftnnode database index.
The index contains the following fields:  zone, net, node, point, domain,
ftnyear, and yearday.

=cut

sub ftnnode_index_fields {

    my $field_list = 'zone,net,node,point,domain,ftnyear,yearday';

    return($field_list);

}

=head1 EXAMPLES

An example of opening an FTN database, then creating a nodelist table,
loading data to it, then creating an index on it, and the closing
the database:

    use FTN::Database::Nodelist;

    my $db_handle = open_ftn_database(\%db_option);
    define_nodelist_table($db_handle, $table_name);
    ...   (Load data to nodelist table)
    ftnnode_index_tables($db_handle, $table_name);
    close_ftn_database($db_handle);

=head1 AUTHOR

Robert James Clay, C<< <jame at rocasa.us> >>

=head1 BUGS

Please report any bugs or feature requests via the web interface at
L<https://github.com/ftnpl/FTN-Database/issues>. I will be notified,
and then you'll automatically be notified of progress on your bug
as I make changes.

Note that you can also report any bugs or feature requests to
C<bug-ftn-database at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=FTN-Database>;
however, the FTN-Database Issue tracker is preferred.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc FTN::Database::Nodelist


You can also look for information at:

=over 4

=item * FTN-Database issue tracker

L<https://github.com/ftnpl/FTN-Database/issues>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=FTN-Database>

=item * Search CPAN

L<http://search.cpan.org/dist/FTN-Database>

=back

=head1 SEE ALSO

 L<FTN::Database>, L<ftndb-admin>, and L<ftndb-nodelist>

=head1 COPYRIGHT & LICENSE

Copyright 2010-2012 Robert James Clay, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1; # End of FTN::Database::Nodelist
