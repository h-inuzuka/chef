#
# Cookbook Name:: java7
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#package "java-1.7.0-openjdk.x86_64" do
#  action :install
#end


bash "installjava" do
  code <<-EOC
    sudo yum -y install java-1.7.0-openjdk.x86_64
  EOC
end
