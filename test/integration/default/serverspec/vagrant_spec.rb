require 'serverspec'

# Required by serverspec
set :backend, :exec

describe command('vagrant version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /Installed Version: 1\.9\.3/ }
end