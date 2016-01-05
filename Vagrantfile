Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.synced_folder "#{ENV['HOME']}/bin", '/home/vagrant/bin'
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.synced_folder '.', '/var/www/shibe.local'
  config.vm.provision 'shell', inline: <<-SHELL
    /var/www/shibe.local/infrastructure/provision.sh
  SHELL

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = '2048'
    vb.cpus = 4
  end

  config.vm.define 'shibe' do |box|
    box.vm.hostname = 'shibe.local'
    box.vm.network 'private_network', ip: '10.0.0.100'
  end
end