# frozen_string_literal: true

RSpec.describe Ruby::Przypadki do
  it 'has a version number' do
    expect(Ruby::Przypadki::VERSION).not_to be_nil
  end

  it 'checks suffixes' do
    expect('test'.ends_with?('st')).to be(true)
    expect('test'.ends_with?('xx')).to be(false)
    expect('test'.ends_with?('test')).to be(true)
    expect('test'.ends_with?('longtest')).to be(false)
    expect('test'.ends_with?('')).to be(true)
  end

  {
    'Tomasz' => 'Tomasza',
    'Sandra' => 'Sandry',
    'Grzegorz' => 'Grzegorza',
    'Aneta' => 'Anety',
    'Mieszko' => 'Mieszka',
    'Agnieszka' => 'Agnieszki',
    'Oliwia' => 'Oliwii',
    'Maja' => 'Mai',
  }.each do |input, output|
    it "calculates dopelniacz of #{input} (#{output})" do
      expect(Ruby::Przypadki.dopelniacz(input)).to eq(output)
    end
  end
end
