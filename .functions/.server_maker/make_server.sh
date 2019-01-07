mkdir views
mkdir public
echo "node_modules" >> .gitignore
cp ~/.functions/.server_maker/index.html views/index.html
touch public/script.js
touch public/style.css
cp ~/.functions/.server_maker/package.json package.json
cp ~/.functions/.server_maker/server.js server.js
npm install
