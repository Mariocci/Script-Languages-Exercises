use utf8;
use open ':locale';
use locale;

$file = shift @ARGV;
$prefix_length = pop @ARGV ;

open($fh, '<:encoding(UTF-8)', $file);

%word_counts;


while ($line = <$fh>) {
    @words = split /\W+/, $line;

    foreach $word (@words) {
        $word = lc($word);
        $prefix = substr($word, 0, $prefix_length);

        $word_counts{$prefix}++;
    }
}

close($fh);

@sorted_prefixes = sort keys %word_counts;

foreach $prefix (@sorted_prefixes) {
    print "$prefix : $word_counts{$prefix}\n";
}
