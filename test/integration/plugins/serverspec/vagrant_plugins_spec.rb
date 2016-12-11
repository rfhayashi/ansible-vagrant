require 'serverspec'

# Required by serverspec
set :backend, :exec

describe command('su vagrant -c "vagrant plugin list"') do
  its(:stdout) { should match /vagrant-cachier \(1\.2\.1\)/ }
  its(:stdout) { should match /nugrant/ }
end