require 'spec_helper'

describe Shorter do
  it 'VERSION constant is defined' do
    expect(Shorter::VERSION).to eql('0.0.3')
  end
end
