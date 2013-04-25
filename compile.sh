#!/bin/bash
set -e

cd server
ghc --make -O2 -threaded -hidir ghc_output -odir ghc_output Server.hs
mv Server ../bin/
cd ..
echo "Starting server on port 8000."
bin/Server
