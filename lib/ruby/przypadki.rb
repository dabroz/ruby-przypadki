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

class String
  unless method_defined?(:ends_with?)
    def ends_with?(suffix)
      return true if suffix.empty?

      self[-suffix.length..] == suffix
    end
  end
end

module Ruby::Przypadki
  def self.dopelniacz(word)
    return "#{word[0...-2]}ka" if word.ends_with?('ek')

    return "#{word[0...-2]}i" if word.ends_with?('ja')
    return "#{word[0...-1]}i" if word.ends_with?('ia')

    return "#{word[0...-1]}i" if word.ends_with?('ka')
    return "#{word[0...-1]}a" if word.ends_with?('ko')

    return "#{word}ego" if word.ends_with?('i')

    return "#{word[0...-1]}y" if word.ends_with?('a')

    "#{word}a"
  end
end
