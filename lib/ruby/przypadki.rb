# frozen_string_literal: true

require_relative "przypadki/version"

module Ruby
  module Przypadki
    class Error < StandardError; end
    # Your code goes here...
  end
end


module Ruby
  module Przypadki
    def self.dopelniacz(word)
      if word[-1] == 'a'
        word[0...-1] + 'y'
      else
        word + 'a'
      end
    end
  end
end
