#!/usr/bin/perl
#Developed by Marck ( @7mm5l )
#           _____
#         </  U  \>
#        </ _ . _ \>
#       <[|( )~( )|]>
#        <\.| | |./>
#         <|_____|>
#          __|.|__
#         |_______|

use Digest::MD5  qw(md5_hex);

if ($^O =~/Win32/ig) { system("cls"); }else{ system("clear"); }
print ".  ..__ ._,   .__        ,         .___            
|\\/||  \\|_    [__)._.. .-+- _  ___ [__  _ ._. _. _ 
|  ||__/._)   [__)[  (_| | (/,     |   (_)[  (_.(/,
use: $0 <wordlist> <hash>
";
if (length($ARGV[0])=="0" or length($ARGV[1])=="0"){ exit(); }
if (length($ARGV[1])<32){ print "\n[~]This hash is not MD5!\n"; exit(); }
print "\n\n[!] For best performance, only the final result will be shown!\n";
open(Word, $ARGV[0]) or die ("\n[!] Unable to open your Word-List!\n");  
while(<Word>) { 
my $pass = $_; 
chomp $pass; 
$codi = md5_hex($pass);
if ($codi eq $ARGV[1]){ 
print "\n\n[!]Found: $pass\n\n"; 
exit();
}
}
print "\n\n[~] String not found!\n\n";
