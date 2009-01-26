#!/usr/bin/perl

# place holder for a shell command line utility called "ptsb"
# this will be a command the user can use to deal with his homebanking

# parse config file to retrieve acc_no, password and pan
sub parse_configfile {
    open(FILE, $cfgfile) or die "Cannot open config file. Error was: \"$!\"\n";
    while(<FILE>) {
        if(not /^\s{0,}#/ or not /^\s{0,}/) {
            my ($key, $val) = split '=';
            $val =~ s/^\s+//;
            $val =~ s/\s+$//;
            $user = $val if($key eq 'account_number');
            $pass = $val if($key eq 'password');
            $pan = $val if($key eq 'pan');
        }
    }
    close FILE;
}

# main program
sub main {
}

main;

exit 0;
