require 'spec_helper'

describe 'current::install' do
  describe file('/usr/bin/current') do
    it { should be_file }
    it { should be_executable }
  end
end
