require 'spec_helper'

describe Ranger do
  it 'has a version number' do
    expect(Ranger::VERSION).not_to be nil
  end

  it 'implements a #to_range method on strings' do
    expect("string".methods.include?(:to_range)).to eq true
  end

  describe "#to_range" do
    context "integer..integer case" do
      it 'raises ArgumentError if non-range-y string is given' do
        expect{ "x..y".to_range }.to raise_error ArgumentError
      end
      it 'converts "1..3" to a range object' do
        expect("1..3".to_range.class).to eq Range
        expect("1..3".to_range).to eq 1..3
      end
      it 'converts "1...3" to a range object' do
        expect("1...3".to_range.class).to eq Range
        expect("1...3".to_range).to eq 1...3
      end
    end
    context "date..date case" do
      it 'raises ArgumentError if non-range-y string is given' do
        expect{ "123-13-3112..sas-d-asd-t".to_range }.to raise_error ArgumentError
      end
      it 'converts "01-01-2015..02-02-2015" to a range object' do
        expect("01-01-2015..02-02-2015".to_range).to eq ("Thu, 01 Jan 2015 00:00:00 +0000".to_datetime .. "Mon, 02 Feb 2015 23:59:59 +0000".to_datetime)
      end
      it 'converts "01-01-2015...02-02-2015" to a range object' do
        expect("01-01-2015...02-02-2015".to_range).to eq ("Thu, 01 Jan 2015 00:00:00 +0000".to_datetime .. "Mon, 02 Feb 2015 23:59:59 +0000".to_datetime)
      end
    end
  end




end
