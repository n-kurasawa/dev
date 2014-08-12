# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # ホスト名
  config.vm.hostname = "guest"

  # Vagrantボックス情報
  # ボックスがローカル環境に無ければはじめにurlからインストールする
  config.vm.box = "opscode-centos-6.5"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.5_chef-provisionerless.box"

  # IPアドレスの設定
  config.vm.network "private_network", ip: "192.168.33.10"

  # vagrant-omnibusの有効化(Chef Solo/Chef Clientを自動でインストールする)
  config.omnibus.chef_version = :latest

  # Chef Soloでのプロビジョニングの設定
  config.vm.provision :chef_solo do |chef|
    # クックブックの配置場所
    chef.cookbooks_path = ["./cookbooks", "./site-cookbooks"]

    # Attributeの定義
    chef.json = {
      nodejs: {
        version: '0.10.26'
      },
      npm: {
        version: '1.4.23'
      },
      mongodb: {
        version: '2.6.3'
      }
    }

    # 適用するレシピ
    chef.run_list = %w[
      recipe[yum-epel]
      recipe[nginx]
      recipe[npm]
      recipe[mongodb::mongodb_org_repo]
      recipe[mongodb]
      recipe[npm-package]
      recipe[ruby-env]
    ]
  end

end
