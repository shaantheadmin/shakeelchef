#
# Cookbook Name:: shakeelcookbook
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
rs_utils_marker :begin
log "your message"
package_name = value_for_platform(
["centos", "redhat", "suse", "fedora" ] => { "default" => "httpd" },
["ubuntu", "debian"] => { "default" => "apache2" }
)
package package_name do
  action :install
  end
  log "The package that will be installed is #{package_name}"
rs_utils_marker :end
