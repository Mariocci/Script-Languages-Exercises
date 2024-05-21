sub parse_datetime {
    ($datetime_str) = @_;
    ($date, $time) = split /\s+/, $datetime_str;
    return ($date, $time);
}

sub time_difference {
    ($start_datetime, $end_datetime) = @_;
    ($start_date, $start_time) = parse_datetime($start_datetime);
    ($end_date, $end_time) = parse_datetime($end_datetime);

    ($start_hour) = split /:/, $start_time;
    ($end_hour) = split /:/, $end_time;
    if ($start_hour eq $end_hour && $start_date eq $end_date) {
        return 0;
    } else {
        return 1;
    }
}

$fh;
if (@ARGV) {
    $file = shift @ARGV;
    open($fh, '<', $file) or die;
} else {
    $fh = \*STDIN;
}
while ($line = <$fh>) {
    chomp $line;
    ($jmbag, $prezime, $ime, $termin, $zakljucano) = split /;/, $line;
    ($lab_date, $lab_time) = parse_datetime($termin);
    ($lock_date, $lock_time) = parse_datetime($zakljucano);

    $lock_hour = (split /:/, $lock_time)[0];

    if ($lock_hour eq (split /:/, $lab_time)[0] && $lock_date eq $lab_date) {
        next;
    }

    print "$jmbag $prezime $ime - PROBLEM: $termin --> $zakljucano\n";
}
close($fh);