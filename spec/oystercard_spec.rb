require 'oystercard'

describe Oystercard do
    describe '#balance' do
      it "a new oystercard defaults to a balance of 0" do
        expect(subject.balance).to eq 0
      end
    end
end