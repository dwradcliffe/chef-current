require 'spec_helper'

describe 'current_test::default' do
  describe service('current_send_some-app') do
    it { should be_running.under('runit') }
  end
  describe file('/etc/service/current_send_some-app/run') do
    its(:content) { should match %r{exec chpst -uroot /usr/bin/current send -d /var/lib/current/some-app -t asdfasdfasdfasdfasdf  /var/log/some-app/asdf.log} }
  end
  describe service('current_send_some-other-app') do
    it { should be_running.under('runit') }
  end
  describe file('/etc/service/current_send_some-other-app/run') do
    its(:content) { should match %r{exec chpst -uroot /usr/bin/current send -d /var/lib/current/some-other-app -t token-set-from-attribute --tag rails /var/log/some-other-app/asdf.log} }
  end
end
