regex='(^.{4})(.{2}).*[ ]\2'

grep -E "$regex" stairway.txt