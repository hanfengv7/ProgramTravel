deploy:
    git checkout master
    git add -A
    git commit -m "deploy blog"
    mkdir tmp
    cp -r _site/ ./tmp/
    git checkout gh-pages
    rm -r ./*
    cp -r ./tmp/_site/* ./
    rm -rf tmp
    git add -A
    git commit -m "deploy blog"
    git push origin gh-pages
    git checkout master
    echo "deploy succeed"