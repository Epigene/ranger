require 'spec_helper'

describe Ranger do
  it 'has a version number' do
    expect(Ranger::VERSION).not_to be nil
  end

  it 'implements a #to_range method on strings' do
    expect("string".methods.include?(:to_range)).to eq true
  end

  describe "#to_range" do
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


end
