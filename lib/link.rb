# frozen_string_literal: true

# The sole component in a linked list
class Link
  attr_reader :value, :next

  def initialize(v, n = nil)
    @value = v
    @next = n
  end

  def ==(other)
    (@value == other&.value) && (@next == other.next)
  end

  def to_s
    if @next
      "#{@value} - #{@next}"
    else
      @value.to_s
    end
  end
end
