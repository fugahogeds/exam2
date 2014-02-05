#
# Cookbook Name:: datafile
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "apt-get update" do
  action :nothing
end

cookbook_file "/etc/apt/sources.list" do
  action :create
  notifies :run, "execute[apt-get update]", :immediately
end

