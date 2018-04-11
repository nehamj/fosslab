#!/usr/bin/perl
open(DATA , "<file.txt") or die "Could not open file: $!";

$lines=0;
$words=0;
$chars=0;

while(<DATA>)
{  $lines++;
   $chars +=length($_);
   $words +=scalar(split(/\s+/, $_));
}

print "\nlines=$lines \nwords=$words \nchar=$chars \n"; 
