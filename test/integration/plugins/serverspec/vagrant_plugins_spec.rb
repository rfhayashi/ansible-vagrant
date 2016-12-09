require 'serverspec'

# Required by serverspec
set :backend, :exec

describe command('vagrant plugin list') do
  its(:stdout) { should match /vagrant-cachier/ }
end