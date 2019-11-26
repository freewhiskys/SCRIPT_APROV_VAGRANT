Vagrant.configure("2") do |config|
     config.vm.define "master" do |nodo0|
       nodo0.vm.box = "ubuntuMySQL8.box"
       nodo0.vm.hostname = "master"
       nodo0.vm.network "public_network", ip: "192.168.1.68"
       nodo0.vm.network "public_network", ip: "192.168.207.166"
     endL
end
