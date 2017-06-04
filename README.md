# Xcode templates for Hopper disassembler

Currently the templates are targeted at Hopper SDK 4.1.4+ providing some basic options.
![Options](/img/options.gif)


## Installation

```sh
cp -R *.xctemplate ~/Library/Developer/Xcode/Templates/Hopper
```

The templates should then be available in Xcode when creating new projects (File->New->Project…, in the "Hopper" category).

The Hopper SDK should be made available to the plugin by copying the `include` SDK directory under a directory named 'HopperSDK' in your project source root.  If you use Git in your project, you can achieve this by adding the SDK as a submodule to your source tree:

```sh
git submodule add -b include https://github.com/makigumo/HopperSDK-v4.git HopperSDK
```
