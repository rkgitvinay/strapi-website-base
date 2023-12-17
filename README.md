# 🚀 Getting started with CMS admin panel

### `Setup`
```
git clone https://github.com/rkgitvinay/strapi-website-base.git <folder-name>
cd <folder-name>

# Install dependencies
npm install

cp .env.example .env
# Update values in .env file
```
### `Database`
```
Create a new database and import base.sql file
```

### `develop`
```
npm run develop
# or
yarn develop
```

### `build`
```
npm run build
# or
yarn build
```

### `deploy`
```
pm2 start ecosystem.config.js
```