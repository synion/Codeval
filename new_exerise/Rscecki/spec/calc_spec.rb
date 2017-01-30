require 'calc'

RSpec.describe Calc, 'calc' do
  context "Add to point" do
   it 'sum of to point' do 
    calc = Calc.new
    expect(calc.add(4,6)).to eq 10
   end
  end
  context "difference to point" do 
    it "difference of to point" do
      calc = Calc.new
      expect(calc.diff(6,4)).to eq 2
    end
  end
end   