require 'spec_helper'

describe package('mackerel-agent') do
  it { should be_installed }
end

describe service('mackerel-agent') do
  it { should be_enabled   }
end

describe file('/etc/mackerel-agent/mackerel-agent.conf') do
  it { should be_file }
end
