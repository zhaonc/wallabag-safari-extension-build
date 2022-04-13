
rm -rf ./build 2> /dev/null
mkdir ./build && cd ./build
wget https://github.com/wallabag/wallabagger/raw/master/wallabagger.crx
unzip wallabagger.crx
xcrun safari-web-extension-converter .
cd ./Wallabagger
mkdir Wallabagger
xcodebuild -scheme "Wallabagger (macOS)" build
