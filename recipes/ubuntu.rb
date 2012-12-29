#
# Cookbook Name:: collectd-write-graphite
# Recipe:: ubuntu.rb
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

# Helper recipe to get collectd updated on 12.04 and 12.10
include_recipe "apt"
apt_repository "afcowie_ppa" do
  uri "http://ppa.launchpad.net/afcowie/network/ubuntu"
  components ["main"]
  distribution node['lsb']['codename']
  keyserver "keyserver.ubuntu.com"
  key "35BCB588"
end

package "collectd" do
  action :upgrade
  options "-o Dpkg::Options::='--force-confold' -o Dpkg::Options::='--force-confdef'"
end

include_recipe "collectd-write-graphite"
