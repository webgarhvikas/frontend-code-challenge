curl -L -O https://github.com/Shopify/dawn/archive/main.zip
mkdir .cache
mv main.zip .cache/main.zip
cd .cache
unzip main.zip
if [ ! $1 = "update" ]
then
  mkdir ../assets
  mkdir ../config
  mkdir ../layout
  mkdir ../locales
  mkdir ../sections
  mkdir ../snippets
  mkdir ../templates
fi
\cp -R dawn-main/assets/ ../assets
\cp -R dawn-main/config/ ../config
\cp -R dawn-main/layout/ ../layout
\cp -R dawn-main/locales/ ../locales
\cp -R dawn-main/sections/ ../sections
\cp -R dawn-main/snippets/ ../snippets
\cp -R dawn-main/templates/ ../templates
cd ..

rm -R .cache