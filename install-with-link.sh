rm -rf app/node_modules

mkdir -p app/node_modules
mkdir -p app/dist
mkdir -p my-module/node_modules

cp -r common-dependency my-module/node_modules/
cp -r common-dependency app/node_modules/

cd my-module
npm link

cd ../app

npm link my-module
npm install
npm run build
