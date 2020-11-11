#!/usr/bin/perl 
use strict;

    chdir '/home/efidev/EFI_Other_truch/etil-xmlbeans';
     
    my @lines = `svn status|grep ^M`;
   
    foreach (@lines) {       
        my $filename = $_;
        $filename =~ s/^M\s+//; 
        my  $diffstr = "svn diff $filename";
 
        my  @a = `$diffstr`;   
        my $linie = 0;   
        foreach (@a) {    
            $linie++;        
            if ($_ =~ /^\+/ && $_ !~ /^\+\+\+/ && $linie > 12) {               
                print $filename;
                last;
            }   
        }
    }
    
    
