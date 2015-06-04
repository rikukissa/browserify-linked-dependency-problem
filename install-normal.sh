rm -rf app/node_modules

mkdir -p app/dist
mkdir -p app/node_modules

mkdir -p my-module/node_modules

cp -r common-dependency my-module/node_modules/
cp -r common-dependency app/node_modules/

cp -r ./my-module app/node_modules

cd app
npm install
npm run build
