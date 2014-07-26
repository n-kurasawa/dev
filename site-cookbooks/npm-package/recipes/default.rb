#
# Cookbook Name:: npm-package
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{grunt-cli express mongoose}.each do |pkg|
  npm_package pkg do
    action :install
  end
end