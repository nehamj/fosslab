#!/usr/bin/perl

# This program shows the basic concepts of perl program

=begin comment
  There are 3 basic data types
  1.Scalars
  2.Arrays
  3.Hashes
=cut

#scalar 
$a=20;
$b="Hello";
print "\nExample of scalar data type :$a ,$b";

#arrays
@name=("John","Patrick","Mike");
print "\nExample of arrays: $name[0] ,$name[1] ,$name[2]";

#hashes
%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

print "\n\$data{'John Paul'} = $data{'John Paul'}";
print "\n\$data{'Lisa'} = $data{'Lisa'}";
print "\n\$data{'Kumar'} = $data{'Kumar'}";

#basic aritmetic operation
$sum=2+1;
$sub=2-1;
$mul=2*1;
$div=2/1;

print"\nBasic operations on numbers 2 and 1:";
print "\nSum=$sum \nSub=$sub \nMul=$mul \nDiv=$div\n";


