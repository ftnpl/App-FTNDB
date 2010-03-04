#!/bin/sh
# nl2sql.sh - 1.2
#  This is an example test script that loads two nodelists 
# Copyright (c) 2001-2005 Robert James Clay.  All Rights Reserved.
# This is free software;  you can redistribute it and/or
# modify it under the same terms as Perl itself.
#
BINDIR=/opt/ftn/sql/nl2sql
NLDIR=/var/spool/ftn/nl.d
LOGDIR=/var/log/bbsdbpl
LOGFILE=$LOGDIR/nl2sql.log
##$BINDIR/nl2sql.pl -n nldir [-f nlfile] [-l logfile] [-d domain] [-v] [-x] [-e] 2>$LOGDIR/nl2sql.stn.errors
$BINDIR/nl2sql.pl -n $NLDIR -f STNLIST -l $LOGFILE -d stn -v -x 2>$LOGDIR/nl2sql.stn.errors
#
#$BINDIR/nl2sql.pl -n $NLDIR [-f nodelist] [-d fidonet] [-v] [-x] [-e] 2>$LOGDIR/nlsql.ftn.errors
$BINDIR/nl2sql.pl -n $NLDIR $LOGFILE -d fidonet -v 2>$LOGDIR/nl2sql.ftn.errors
