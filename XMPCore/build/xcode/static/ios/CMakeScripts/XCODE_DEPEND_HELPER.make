# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.XMPCoreStatic.Debug:
/Users/filipbusic/Desktop/Adobe-XMP-ToolKit/public/libraries/ios/$(ARCHS)/Debug/libXMPCoreStatic.a:
	/bin/rm -f /Users/filipbusic/Desktop/Adobe-XMP-ToolKit/public/libraries/ios/$(ARCHS)/Debug/libXMPCoreStatic.a


PostBuild.XMPCoreStatic.Release:
/Users/filipbusic/Desktop/Adobe-XMP-ToolKit/public/libraries/ios/$(ARCHS)/Release/libXMPCoreStatic.a:
	/bin/rm -f /Users/filipbusic/Desktop/Adobe-XMP-ToolKit/public/libraries/ios/$(ARCHS)/Release/libXMPCoreStatic.a




# For each target create a dummy ruleso the target does not have to exist
