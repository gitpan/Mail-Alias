#!/usr/bin/perl -w

# exists_test.pl - test script for Mail::Alias package
#	Version 1.0			19 August 2000		T. Zeltwanger

use Mail::Alias;

my ($alias_obj);

$alias_obj = Mail::Alias->new();						# Use default filename
#$alias_obj = Mail::Alias->new("--testfile_name--");	# Set the filename


# Tests for Alias::exists methods
# NOTE: add some of the following aliases to the alias file you are checking
	$testalias1 = "test_alias1";
	$testalias2 = "postmaster";
	$testalias3 = "testing123";
	
# alias_exists()

	@alias_list = ($testalias1, $testalias2, $testalias3);
	foreach $alias (@alias_list) {
	
		# If the alias was found in the file
		if ($alias_obj->exists($alias)) {
			print "The alias $alias was found in the file $alias_obj->{_filename}\n";
			print "The text line found is:$_\n";
		}
	
		# If the alias was not found in the file
		# Check the error message
		else {
			print $alias_obj->error_check, "\n\n";
		}

	}


	
