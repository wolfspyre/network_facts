require 'facter'
require 'open-uri'
require 'timeout'

#Public IP
# Expected output: The public ipaddress of this node.
Facter.add("network_public_ip") do
  setcode do
    Timeout::timeout(2) do
      open('http://ip-echo.appspot.com', 'User-Agent' => 'Ruby/Facter').read.match(/^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$/).to_s
    end
  end
end
