# See documentation for collectd_plugin definition provided by the collectd
# cookbook located at http://community.opscode.com/cookbooks/collectd
default[:graphite][:write_options][:host] = "localhost"
default[:graphite][:write_options][:port] = "2003"
default[:graphite][:write_options][:EscapeCharacter] = "_"
