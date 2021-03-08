require 'oystercard'

describe Oystercard do

  describe "::MAX_BALANCE" do
    it "return 90 when called" do
      expect(Oystercard::MAX_BALANCE).to eq 90
    end
  end

  describe '#balance' do
    it "a new oystercard defaults to a balance of 0" do
      expect(subject.balance).to eq 0
    end
  end

  describe '#top_up' do
    it "adds the amount topped up to the oystercard balance, gives confirmation message" do
      message = "Topped up succesfully! Balance of Oystercard is now £80.50"
      expect(subject.top_up(80.50)).to eq message
    end

    context "when top up over 90" do
      it "throws a error" do
        expect { subject.top_up(100) }.to raise_error "can't top up over £90"
      end
    end
  end

    

  describe "#deduct" do
    it "deduct amount from balance" do
      subject.top_up(10)
      message = "Deducted £5.00 succesfully! Balance of Oystercard is now £5.00"
      expect(subject.deduct(5)).to eq message
    end
  end

end