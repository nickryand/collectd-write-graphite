name             "collectd-write-graphite"
maintainer       "Nick Downs"
maintainer_email "nickryand@gmail.com"
license          "Apache 2.0"
description      "Installs/Configures the write_graphite plugin for collectd"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "apt"
depends "collectd", ">= 1.0.0"
depends "collectd_plugins", ">= 1.0.0"
