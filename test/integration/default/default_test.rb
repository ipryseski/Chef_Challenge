describe package("docker-ce") do
  it {should be_installed}
end

describe http('http://localhost') do
	its('body') {should match /Simpli.fi/} 
end


control "01" do
  title "Docker Service"
  desc "Verify docker service is enabled and running"
 describe service("docker") do
   it { should be_running}
   it { should be_enabled}
 end
end

describe port(80) do
  it { should be_listening}
  its('addresses') {should eq('0.0.0.0').or eq(["::"]) }
end

describe port(3000) do
  it { should_not be_listening}
end

docker.containers.running?.ids.each do |id|
  describe docker.object(id) do
    its('State.Status') {should eq 'running'}
  end
end
