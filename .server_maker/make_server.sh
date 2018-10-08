mkdir views
mkdir public
echo "node_modules" >> .gitignore
touch views/index.html
touch public/script.js
touch public/style.css
cp ~/.server_maker/package.json package.json
cp ~/.server_maker/server.js server.js
npm install
