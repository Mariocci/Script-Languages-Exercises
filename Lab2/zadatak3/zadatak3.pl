%access_counts;

while ($redak = <>) {
    chomp($redak);
    $datum = $redak;
    $datum =~ s/.*\[(\d{2}\/\w{3}\/\d{4}):.*/$1/;
    $sat = $redak;
    $sat =~ s/.*\[\d{2}\/\w{3}\/\d{4}:(\d{2}).*/$1/;
    $access_counts{$datum}{$sat}++;
}

foreach $datum (sort keys %access_counts) {
    print("Datum: $datum\n");
    print("sat : broj pristupa\n");
    print("--------------------------\n");
    
    for ($var = 0; $var < 24; $var++) {
        $access_count = $access_counts{$datum}{$var} // 0;
        print("$var : $access_count\n");
    }
}