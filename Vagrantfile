# Vagrantfile
Vagrant.configure("2") do |config|
  # Use the Windows Server 2019 box
  config.vm.box = "gusztavvargadr/windows-server-2019-standard"
  config.vm.box_version = "1809.0.2407"

  # Copy local folder to VM
  config.vm.provision "file", source: "./demo", destination: "C:\\Users\\vagrant\\Downloads"

  # Provisioning script to run setup.ps1 for installations
  config.vm.provision "shell", path: "setup.ps1"
  config.vm.provision "shell", path: "check-install.ps1"
  config.vm.provision "shell", path: "run-apps.ps1"

  config.vm.communicator = "winrm"
  config.winrm.basic_auth_only = true
  config.winrm.transport = :plaintext

  # Forwarding ports
  config.vm.network "forwarded_port", guest: 8080, host: 8080 # Spring Boot
  config.vm.network "forwarded_port", guest: 27017, host: 27017 # MongoDB

end
