git submodule update --init --recursive

# Move expat out of its duplicate folder structure
mv third-party/expat/expat/ third-party/expat2/
mv third-party/expat/.git third-party/expat2/
rm -rf third-party/expat/
mv third-party/expat2/ third-party/expat/

echo "Setup successful"
