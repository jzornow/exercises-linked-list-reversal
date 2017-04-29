# A Simple Linked-List Reversal Engine
Try it with:

```ruby
list = Link.new('a', Link.new('b', Link.new('c', Link.new('d'))))
puts list.to_s
# => "a - b - c - d"

reversed = ListReverser.reverse(list)
puts reversed.to_s
# => "d - c - b - a"
```

