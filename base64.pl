#!/usr/bin/perl


use MIME::Base64;
use Getopt::Long;

my %opts;
my $encode;
my $decode;

GetOptions(
    \%opts,
	'encode=s' => \$encode,
	'decode=s' => \$decode,
);

if ($encode) {
$string = $encode;
$out = encode_base64($string);
print $out;
print "\n"
}
elsif ($decode) {
$string = $decode;
$out = decode_base64($string);
print $out;
print "\n"
}
else {
print "Help:\n -encode : Encode a string to base64 \n -decode : Decode a string from base64\n";
}
