# rjest
# 文字列を右詰
p "foo".rjust(10)        # => "       foo"
p "foo".rjust(9)         # => "      foo"
p "foo".rjust(8)         # => "     foo"
p "foo".rjust(2)         # => "foo"
p "foo".rjust(1)         # => "foo"
p "foo".rjust(10, "*")   # => "*******foo"
p "123".rjust(10, "0")   # => "0000000123"

# 0埋め
