import Config

# Configure the network using vintage_net
# See https://github.com/nerves-networking/vintage_net for more information
config :vintage_net,
  config: [
    {"usb0", %{type: VintageNetDirect}},
    {"eth0",
     %{
       type: VintageNetEthernet,
       ipv4: %{
         method: :static,
         address: "192.168.5.55",
         netmask: "255.255.255.0"
       }
     }},
    {"wlan0", %{type: VintageNetWiFi}}
  ]

config :nerves_livebook, :delux_config, indicators: %{default: %{green: "led0"}}
