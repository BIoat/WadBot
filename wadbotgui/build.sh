cargo build --release --target x86_64-pc-windows-gnu
cargo build --release 
cp "./target/x86_64-pc-windows-gnu/release/wadbotgui.exe" ./out/wadbotgui.exe
cp "./target/release/wadbotgui" ./out/wadbotgui
cd out 
strip wadbotgui
strip wadbotgui.exe
upx --lzma wadbotgui wadbotgui.exe
cp -f wadbotgui.exe /home/anon/wadbot/wadbotgui.exe
