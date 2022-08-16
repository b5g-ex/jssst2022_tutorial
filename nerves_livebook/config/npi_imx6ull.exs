import Config

# Configure the network using vintage_net
# See https://github.com/nerves-networking/vintage_net for more information
config :vintage_net,
  config: [
    {"usb0", %{type: VintageNetDirect}},
    {"eth0", %{type: VintageNetEthernet, ipv4: %{method: :dhcp}}},
    {"eth1", %{type: VintageNetEthernet, ipv4: %{method: :dhcp}}}
  ]

# The device tree overlays that expose the LEDs aren't currently enabled.
config :nerves_livebook, :delux_config, indicators: %{default: %{}}
