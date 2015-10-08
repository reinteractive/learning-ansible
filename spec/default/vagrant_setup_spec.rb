require 'spec_helper'

# Not really testing ansible, but useful to see how to test some things
# already setup by vagrant, and how that might be testable
describe "Vagrant configuration" do
  describe service('ssh') do
    it { is_expected.to be_enabled   }
    it { is_expected.to be_running   }
  end

  describe file('/etc/ssh/sshd_config') do
    it { is_expected.to be_a_file }
    its(:content) { is_expected.to match (/Port\s+22/) }
  end

  describe port(22) do
    it { is_expected.to be_listening }
  end
end
