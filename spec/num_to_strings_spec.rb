require 'num_to_strings.rb'

describe 'num_to_strings' do
  it 'returns worded numbers when passed 9' do
        expect(num_to_strings("9")).to eq "nine"
  end

  it("returns worded numbers when pases non-integer strings") do
      expect(num_to_strings("5 MAkers")).to eq "five"
      expect(num_to_strings("34Academy")).to eq "thirty four"
      expect(num_to_strings("I <3 u")).to eq "three"
      expect(num_to_strings("17.OO")).to eq "seventeen"
      expect(num_to_strings("1OOO0")).to eq "ten"
      expect(num_to_strings("063~~")).to eq "sixty three"
      expect(num_to_strings("1£^%1")).to eq "eleven"
      expect(num_to_strings("!|<>99 ..")).to eq "ninety nine"
      expect(num_to_strings("8.0")).to eq "eighty"
    end

end
