require 'serverspec'
set :backend, :exec

describe file('/usr/local/bin/packer') do
    it { should exist }
    it { should be_executable.by('others') }
end

describe file('/tmp/packer_0.10.1_linux_amd64.zip') do
    it { should_not exist }
end
