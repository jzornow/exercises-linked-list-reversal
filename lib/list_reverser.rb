# frozen_string_literal: true

require 'link'

# reverses linked lists
class ListReverser
  # (a, (b, (c, ()))
  # (b, (a, (c, ()))
  # (b, (c, (a, ()))

  def self.reverse(list)
    current = list
    previous_link = nil

    while current
      next_link = current.next
      current.next = previous_link

      previous_link = current
      current = next_link
    end

    previous_link
  end
end
