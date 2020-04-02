title 'AWS EC2 Instance creation test'

outputs = inspec.profile.file('terraform.json')
params = JSON.parse(outputs)
INSTANCE_ID = params['instance_id']['value']
AMI_ID = params['instance_ami']['value']

control 'Check aws_instance' do
  impact 1.0
  title 'Ensure AWS EC2 is created properly'

  describe aws_ec2_instance(INSTANCE_ID) do
    it { should exist }
    its('image_id') { should eq AMI_ID }
  end
end