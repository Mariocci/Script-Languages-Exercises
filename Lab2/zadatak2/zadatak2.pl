@lista = (23,3242,54,342,67,3,11,0,6);

$sum = 0;
$no_el = 0;

foreach my $element (@lista) {
    $sum += $element;
    $no_el++;
}
my $avg = $sum / $no_el;

print "Average: $avg\n";