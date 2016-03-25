require 'spec_helper'

describe 'current::install' do
  describe package('current') do
    it { should be_installed.with_version('0.12.0') }
  end
  describe file('/usr/bin/current') do
    it { should be_file }
    it { should be_executable }
  end
end
