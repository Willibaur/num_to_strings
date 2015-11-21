require 'num_to_strings.rb'

describe 'num_to_strings' do

  it 'returns worded numbers when passed 9' do
        expect(num_to_strings("9")).to eq "nine"
  end

  it("returns worded numbers when passed non-integer strings") do
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

  it("returns worded numbers when passed numbers as strings") do
    qty_1s_to19s = {
        0 =>'zero', 1=>'one', 2=>'two', 3=>'three', 4=>'four', 5=>'five', 6=>'six', 7=>'seven', 8=>'eight', 9=>'nine', 10=>'ten', 11=>'eleven', 12=>'twelve', 13=>'thirteen', 14=>'fourteen', 15=>'fifteen', 16=>'sixteen', 17=>'seventeen', 18=>'eighteen', 19=>'nineteen'
     }

    #  qty_20s_to_90s = {
    #    2=>'twenty', 3=>'thirty', 4=>'forty', 5=>'fifty', 6=>'sixty', 7=>'seventy', 8=>'eighty', 9=>'ninety'

    qty_1s_to19s.each {|key, value| expect(num_to_strings(key.to_s)).to eq value}
  end

end
