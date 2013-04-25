
taskkill /F /IM Server.exe
cd server
ghc --make -O2 -threaded -hidir ghc_output -odir ghc_output Server.hs
mv Server.exe ..\bin
cd ..
start "Elm Server" bin\Server.exe
