rm -rf public/assets/*
RAILS_ENV=production rails assets:precompile
cp -r app/assets/images/* public/assets
cp app/assets/fonts/* public/assets
