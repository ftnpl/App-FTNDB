4#!/bin/sh
# nltable.sh - 1.2
#  This is an example test script that loads two nodelists 
# Copyright (c) 2001-2005 Robert James Clay.  All Rights Reserved.
# This is free software;  you can redistribute it and/or
# modify it under the same terms as Perl itself.
#
BINDIR=/opt/ftn/sql/nl2sql
NLTABLE=nodelist
LOGDIR=/var/log/bbsdbpl
#$BINDIR/nl2sql.pl -n $NLTABLE -v  2>$LOGDIR/nltable.errors
$BINDIR/nltable.pl -n $NLTABLE -v  2>$LOGDIR/nltable.errors
#
