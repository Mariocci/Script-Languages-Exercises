print "Type the char array:\n";
$line = <STDIN>;
print "Type the number:\n";
$number = <STDIN>;
while ($number > 0) {
    $number -= 1;
    print $line;
}