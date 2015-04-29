require 'spec_helper'

describe Ranger do
  it 'has a version number' do
    expect(Ranger::VERSION).not_to be nil
  end

  it 'implements a #to_range method on strings' do
    expect("string".methods.include?(:to_range)).to eq true
  end
end
