# collectd-graphite-writer cookbook

Configures the write_graphite collectd plugin.

Website for plugin: https://collectd.org/wiki/index.php/Plugin:Write_Graphite

# Requirements
Software:
   * Collectd >= 5.1

Cookbook Dependencies:
   * apt
   * collectd
   * collectd_plugins

# Usage
Include the recipe in your nodes runlist.

Connection settings and options are set via node attributes. See the attributes
section for more detail.

# Attributes
[Plugin write_graphite documentation](http://collectd.org/documentation/manpages/collectd.conf.5.shtml#plugin_write_graphite, "Documentation")

Any collectd write_graphite supported option can be set as a node attribute
under the graphite[:write_options] hash. The option will be placed into the
configuration file as is.

Defaults:
* `default[:graphite][:write_options][:host]` = "localhost"
* `default[:graphite][:write_options][:port]` = "2003"
* `default[:graphite][:write_options][:EscapeCharacter]` = "_"

# Recipes

## default
Default recipe which enables the write_graphite plugin by calling the
collectd_plugin definition inside the collectd cookbook

## ubuntu
Helper recipe which adds a PPA that contains a collectd 5.1 package and installs
the updated version of collectd.

# Author

Author:: Nicholas Downs (<nickryand@gmail.com>)
Copyright:: 2012, Nicholas Downs

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
