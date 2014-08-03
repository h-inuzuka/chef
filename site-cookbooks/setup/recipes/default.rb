#
# Cookbook Name:: setup
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
group 'bigman' do
  group_name 'bigman'
  gid 501
  members [ 'bigman' ]
  action :create
end

user 'bigman' do
  comment 'bigman'
  uid 501
  group 'bigman'
  home '/home/bigman'
  shell '/bin/bash'
  password '$6$wZysTRdUhp6rl6DM$mwIRiatpChdJdzlNt/QWCKFoAxx6Uk2YUOJGlbSQEoKLeSmOsUkPqeubpEdMkLmoaQ98EH38saHDBDZw0/Lbs/'
  supports :manage_home => true
  action [ :create, :manage ]
end
