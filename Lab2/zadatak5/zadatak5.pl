$factors_line = <>;
chomp $factors_line;
@factors = split /;/, $factors_line;
print "Factors: ";
print join(", ", @factors);
print "\n";

@results;
while ($line = <>) {
    chomp $line;
    next if $line =~ /^\s*#/ || $line =~ /^\s*$/;
    ($jmbag, $surname, $name, @scores) = split /;/, $line;
    $total_score = 0;
    foreach $i (0 .. $#scores) {
		if ($scores[$i] ne '-') {
			$calculation = $scores[$i] * $factors[$i];
			$total_score += $calculation;
		}
	}
    push @results, { jmbag => $jmbag,surname => $surname, name => $name, total_score => $total_score };
}

@results = sort { $b->{total_score} <=> $a->{total_score} } @results;

print "Lista po rangu:\n";
print "-------------------\n";
$rank = 1;
foreach $result (@results) {
    printf "%d. %s, %s (%s) : %.2f\n", $rank++,$result->{surname}, $result->{name}, $result->{jmbag}, $result->{total_score};
}
