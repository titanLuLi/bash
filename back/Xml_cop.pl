#!/usr/bin/perl 
use strict;

    chdir '/home/efidev/EFI_Other_truch/efi-xmlbeans';
     
    my @lines = `svn status|grep ^M`;
   
    foreach (@lines) {       
        my $filename = $_;
        $filename =~ s/^M\s+//; 
        my  $diffstr = "svn diff $filename";
 
        my  @a = `$diffstr`;
        my $found = 0;   
        foreach (@a) {            
            if ($_ =~ /^\+/ && $_ !~ /^\+\+\+/ && $_ !~ /xs\:documentation/ && $_ !~ /pattern value="r/ && $found == 0) {
                 $found = 1;
                print $filename;
            }   
        }
    }
