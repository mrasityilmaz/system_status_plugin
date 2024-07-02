# system_status_platform_interface

A common platform interface for the [system_status](https://github.com/mrasityilmaz/system_status_plugin).

This interface allows platform-specific implementations of the system_status_plugin, as well as the plugin itself, to ensure they are supporting the same interface.

## Usage

To implement a new platform-specific implementation of system_status_plugin, extend SystemStatusPlatform with an implementation that performs the platform-specific behavior.