rm -rf app/node_modules

mkdir -p app/node_modules
mkdir -p app/dist
mkdir -p module/node_modules

cp -r common-dependency module/node_modules/
cp -r common-dependency app/node_modules/

cd module
npm link

cd ../app

npm link module
npm install

./node_modules/.bin/browserify index.js > dist/bundle.js
