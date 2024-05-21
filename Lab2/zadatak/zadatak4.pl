$filename = $ARGV[0];

open $fh, '<', $filename or die;

$chapter_cnt = 0;
$subch_cnt = 0;

while ($line = <$fh>) {
    if ($line =~ /<h1>(.*?)<\/h1>/i) {
        $chapter_cnt++;
        $subch_cnt = 0;
        print "$chapter_cnt. $1\n";
    } elsif ($line =~ /<h2>(.*?)<\/h2>/i) {
        $subch_cnt++;
        print "\t$chapter_cnt.$subch_cnt. $1\n";
    }
}

close $fh;
