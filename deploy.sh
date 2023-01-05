rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M main &&
git remote add origin git@gitee.com:breeze0814/wheel-xu.git &&
git push -f -u origin main &&
cd -
echo https://breeze0814.github.io/wheel-website/
