import Config

# Use shoehorn to start the main application. See the shoehorn
# docs for separating out critical OTP applications such as those
# involved with firmware updates.

config :shoehorn, init: [:nerves_runtime, :nerves_pack]

# Use Ringlogger as the logger backend and remove :console.
# See https://hexdocs.pm/ring_logger/readme.html for more information on
# configuring ring_logger.

config :logger, backends: [RingLogger, RamoopsLogger]

# Erlinit can be configured without a rootfs_overlay. See
# https://github.com/nerves-project/erlinit/ for more information on
# configuring erlinit.

config :nerves, :erlinit, shutdown_report: "/data/last_shutdown.txt"

# Configure the device for SSH IEx prompt access and firmware updates
#
# * See https://hexdocs.pm/nerves_ssh/readme.html for general SSH configuration
# * See https://hexdocs.pm/ssh_subsystem_fwup/readme.html for firmware updates

config :nerves_ssh,
  daemon_option_overrides: [
    {:pwdfun, &NervesLivebook.ssh_check_pass/2},
    {:auth_method_kb_interactive_data, &NervesLivebook.ssh_show_prompt/3}
  ]

config :mdns_lite,
  instance_name: "Nerves Livebook",

  # Use MdnsLite's DNS bridge feature to support mDNS resolution in Erlang
  dns_bridge_enabled: true,
  dns_bridge_port: 53,
  dns_bridge_recursive: false,
  # Respond to "nerves-1234.local` and "nerves.local"
  hosts: [:hostname, "nerves"],
  ttl: 120,

  # Advertise the following services over mDNS.
  services: [
    %{
      protocol: "http",
      transport: "tcp",
      port: 80
    },
    %{
      protocol: "ssh",
      transport: "tcp",
      port: 22
    },
    %{
      protocol: "sftp-ssh",
      transport: "tcp",
      port: 22
    },
    %{
      protocol: "epmd",
      transport: "tcp",
      port: 4369
    }
  ]

# Common VintageNet configuration
#
# See bbb.exs, rpi0.exs, etc. for device-specific configuration.
#
# regulatory_domain - 00 (global), change to "US", etc.
# additional_name_servers - Set to try mdns_lite's DNS bridge first
config :vintage_net,
  regulatory_domain: "00",
  additional_name_servers: [{127, 0, 0, 53}]

# Import target specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.

import_config "#{Mix.target()}.exs"
