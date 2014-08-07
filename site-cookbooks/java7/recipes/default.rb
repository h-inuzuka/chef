#
# Cookbook Name:: java7
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "installjava" do
  code <<-EOC
    yum -y install java-1.7.0-openjdk.x86_64
#    sudo yum -y install java-1.7.0-openjdk.x86_64
  EOC
end
