#!/usr/bin/env rspec
require 'spec_helper'
require 'open-uri'
#!/usr/bin/env rspec
require 'spec_helper'
require 'open-uri'
describe 'network_public_ip fact' do
  before do
    Facter::Util::Resolution.any_instance.stubs(:open).returns(stub(:read => '1.1.1.1'))
  end
  it "should be our public ip" do
    Facter.fact(:network_public_ip).value.should == '1.1.1.1'
  end
end
