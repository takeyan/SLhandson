#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# create group nginx
 group 'nginx' do
   group_name 'nginx'
   gid 999
   action :create
 end 
# create user nginx
 user 'nginx' do
   comment 'nginx'
   group 'nginx'
   home '/home/nginx'
   shell '/bin/bash'
   password '$1$PXnb3gsY$GK/iiGZrJA1w6mpB3E.Om0'
   supports :manage_home => true
   action :create
 end

