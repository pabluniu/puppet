#
# Custom facter to check installed packages  
# V1.0 2017
#

rpm_ssh = ""

system("/bin/rpm -q open-ssh 2>&1 > /dev/null")

if $?.exitstatus == 0
	rpm_ssh = true
else
	rpm_ssh = false
end

Facter.add("rpm_ssh") do
	setcode do 
		rpm_ssh
	end
end
