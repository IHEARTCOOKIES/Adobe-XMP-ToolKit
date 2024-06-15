#!/bin/bash

# Gets the current directory safely
GetCurrentDirectory()
{
  SOURCE="${BASH_SOURCE[0]}"
  while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$( readlink "$SOURCE" )"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
  done
  $( cd -P "$( dirname "$SOURCE" )" )
  pwd
}

#  Moves Expat into its designated location
InstallExpat()
{
if [ -d "$WORKING_DIR/third-party/expat/expat" ]; then
  mv third-party/expat/expat/ third-party/expat2/
  mv third-party/expat/.git third-party/expat2/
  rm -rf third-party/expat/
  mv third-party/expat2/ third-party/expat/
fi
}

# Downloads & unzips cmake into its designated location
InstallCMake()
{
# Create the bin dir if it's not already created
if [ ! -d "$WORKING_DIR/tools/cmake/bin" ]; then
  mkdir $WORKING_DIR/tools/cmake/bin
fi

# Install & unzip cmake if it's not already there
if [ ! -d "$WORKING_DIR/tools/cmake/bin/CMake.app" ]; then
  cd $WORKING_DIR/tools/cmake/bin
  curl -O https://cmake.org/files/v3.15/cmake-3.15.5-Darwin-x86_64.tar.gz
  tar xf cmake*
  rm cmake*.tar.gz
  mv cmake*/CMake.app .
  rm -rf cmake-*
fi
}

# 1. Get the current directory
WORKING_DIR="$(GetCurrentDirectory)"

# 2. Update any submodules
git submodule update --init --recursive

# 3. Moves Expat into its designated location
InstallExpat;

# 4. Downloads & unzips cmake into its designated location
InstallCMake;

# Print "Setup successful." in green color
GRN='\033[0;32m' # Green color
NC='\033[0m' # No color
echo -e "${GRN}Setup successful.${NC}"
