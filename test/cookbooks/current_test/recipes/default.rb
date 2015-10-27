
directory '/var/log/some-app'
directory '/var/log/some-other-app'

include_recipe 'current::install'

current_send 'some-app' do
  filename '/var/log/some-app/asdf.log'
  token 'asdfasdfasdfasdfasdf'
end

node.default['current']['token'] = 'token-set-from-attribute'

current_send 'some-other-app' do
  filename '/var/log/some-other-app/asdf.log'
end
