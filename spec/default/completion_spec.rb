require 'spec_helper'

describe "Role: completion", "local_facts" do

  describe file("/etc/ansible/facts.d") do
    it { is_expected.to be_a_directory }
  end

  describe file("/etc/ansible/facts.d/last_run.fact") do
    it { is_expected.to be_a_file }
  end

end
