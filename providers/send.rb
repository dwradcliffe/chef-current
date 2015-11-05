use_inline_resources

def whyrun_supported?
  true
end

action :enable do
  _runit_service
end

action :disable do
  _runit_service
end

private

def _runit_service
  include_recipe 'runit'
  opts = {
    name: @new_resource.name,
    user: @new_resource.user,
    token: @new_resource.token,
    filename: @new_resource.filename
  }
  action = @new_resource.action
  runit_service "current_send_#{@new_resource.name}" do
    default_logger true
    run_template_name 'current_send'
    cookbook 'current'
    options(opts)
    action(action)
  end
end
