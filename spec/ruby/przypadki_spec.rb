# frozen_string_literal: true

RSpec.describe Ruby::Przypadki do
  it "has a version number" do
    expect(Ruby::Przypadki::VERSION).not_to be nil
  end

  {
    'Tomasz' => 'Tomasza',
    'Sandra' => 'Sandry',
    'Grzegorz' => 'Grzegorza',
    'Aneta' => 'Anety',
  }.each do |input, output|
    it "calculates dopelniacz of #{input} (#{output})" do
      expect(Ruby::Przypadki.dopelniacz(input)).to eq(output)
    end
  end
end
