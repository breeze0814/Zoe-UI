rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M main &&
git remote add origin git@github.com:breeze0814/wheel-website.git &&
git push -f -u origin main &&
cd -
echo https://breeze0814.github.io/wheel-website/
