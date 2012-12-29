#
# Cookbook Name:: collectd-write-graphite
# Recipe:: default.rb
#
# Copyright (C) 2012 Nick Downs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
include_recipe "collectd"
include_recipe "collectd_plugins"

collectd_plugin "write_graphite" do
  options node[:graphite][:write_options]
  template "carbon.conf.erb"
  cookbook "collectd-write-graphite"
end
