require 'spec_helper'

describe 'current_test::default' do
  describe service('current_send_some-app') do
    it { should be_running }
  end
end
