# Adobe XMP ToolKit

A public fork of the Adobe XMP ToolKit, created to make it easier to setup with help of submodules and shell scripts.

## Installation

The quickest way to get up and running would be to do the following:

1. Clone the repository: `git clone https://github.com/IHEARTCOOKIES/Adobe-XMP-ToolKit.git`

2. Next, `cd` into the directory `cd Adobe-XMP-ToolKit/`

3. Run the setup script `./setup.sh`

4. Enter the build directory `cd build/`

5. Generate the XMP ToolKit for Windows/Mac by executing `./GenerateXMPToolkitSDK_(mac/win).sh`

## Dependencies

- Xcode
- cmake (install via homebrew, `brew install cmake`)

## FAQ

### 1. The Xcode project fails to compile with the following error:
"You do not have support for any sources of high quality entropy enabled. For end user security, that is probably not what you want."

**Explanation**: See ([#88](https://github.com/libexpat/libexpat/issues/88), [#4596](https://github.com/openwrt/packages/issues/4596), [#95](https://github.com/libexpat/libexpat/issues/95)). To bypass this warning, simply `#define XML_POOR_ENTROPY` at the top of the `xmlparse.c` file or in your [CPPFLAGS](https://github.com/lede-project/source/commit/7c727c6fa427dba9e43aaf3648d12af19a4858f1).

## Credit

All credit goes to Adobe for creating this wonderful toolkit. Please refer to their [website](https://www.adobe.com/devnet/xmp.html) for more information.
