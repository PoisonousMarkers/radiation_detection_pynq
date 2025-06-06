# PYNQ-Z2 Constraints for Block Design
# Clock and reset are handled by Processing System - no external constraints needed

# Alert LED - use LD4 (red LED)
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports alert_led]

# Status LEDs - use LD0-LD3 (green LEDs) on PYNQ-Z2
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports {status_leds[0]}]
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports {status_leds[1]}]
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports {status_leds[2]}]
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports {status_leds[3]}] 