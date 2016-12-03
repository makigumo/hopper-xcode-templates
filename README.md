# Xcode templates for Hopper disassembler

Currently the templates are targeted at Hopper SDK 4.0.9 providing some basic options.
![Options](/img/options.gif)


## Installation

```sh
cp -R *.xctemplate ~/Library/Developer/Xcode/Templates/Hopper
```

The template should then be available as a new project template in Xcode (File->New->Project… under Hopper->HopperCPU).

The `include` directory of the Hopper SDK is expected inside the `HopperSDK` folder. Or simply run the following inside the created project directory.

```sh
git submodule add -b include https://github.com/makigumo/HopperSDK-v4.git HopperSDK
```
