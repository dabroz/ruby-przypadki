# frozen_string_literal: true

require_relative 'przypadki/version'

module Ruby
end

module Ruby::Przypadki
end

# Your code goes here...
class Ruby::Przypadki::Error < StandardError
  # Your code goes here...
end

module Ruby::Przypadki
  def self.dopelniacz(word)
    if word[-1] == 'a'
      "#{word[0...-1]}y"
    else
      "#{word}a"
    end
  end
end
