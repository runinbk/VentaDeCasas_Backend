# VentaDeCasas_Backend

## Proyecto de "Venta de casas con seguimiento de pagos y tramites" del lado del Back

## Inicio del Proyecto

- 1. Instalar Typescript de manera Global:

```bash
npm install -g typescript
```

- 2. Inicializar el proyceto de Node:

```bash
mkdir ventaDeCasas && cd ventaDeCasas/ && npm init -y
```

- 3. Crear el archivo ts:

```bash
touch app.ts
```

- 4. Crear el archivo de Typescript:

```bash
tsc --init
```

- 5. Configuramos el `tsconfig.json`: dentro de este archivo, quetamos los comentarios para habilitar las sig. instrucciones

```json
{
  "compilerOptions": {
    "target": "es6",
    "module": "commonjs",
    "sourceMap": true,
    "outDir": "./dist",
    "strict": true,
    "moduleResolution": "node",
    "esModuleInterop": true
  }
}
```

- 6. Agregamos las dependencias necesarias para correr la aplicacion en modo desarrollo:

```bash
npm i --save-dev tslint typescript nodemon @types/express @types/bcrypt @types/cors @types/jsonwebtoken
```

- 7. Agregamos las dependencias necesarias para correr la aplicacion:

```bash
npm i express cors dotenv bcrypt jsonwebtoken express-validator morgan sequelize web-push pg pg-hstore
```

- 8. Ejecutar la el archivo de configuracion `tslint` desde una consola que reconozca los directorios:

```bash
./node_modules/.bin/tslint --init
```

- 9. Configurar el archivo `tslint.json`:

```bash
{
    "rules": {
            "no-console": false,
    },
}
```

- 10. Compilar el codigo ts a js:

```bash
tsc --watch
```

- 12. Crear el archivo `.gitignore`:

```bash
touch .gitignore
```

- 12. Agregar las siguientes lineas al archivo `.gitignore`:

```bash
# Logs
logs
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*
lerna-debug.log*
.pnpm-debug.log*

# Diagnostic reports (https://nodejs.org/api/report.html)
report.[0-9]*.[0-9]*.[0-9]*.[0-9]*.json

# Runtime data
pids
*.pid
*.seed
*.pid.lock

# Directory for instrumented libs generated by jscoverage/JSCover
lib-cov

# Coverage directory used by tools like istanbul
coverage
*.lcov

# nyc test coverage
.nyc_output

# Grunt intermediate storage (https://gruntjs.com/creating-plugins#storing-task-files)
.grunt

# Bower dependency directory (https://bower.io/)
bower_components

# node-waf configuration
.lock-wscript

# Compiled binary addons (https://nodejs.org/api/addons.html)
build/Release

# Dependency directories
node_modules/
jspm_packages/

# Snowpack dependency directory (https://snowpack.dev/)
web_modules/

# TypeScript cache
*.tsbuildinfo

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Optional stylelint cache
.stylelintcache

# Microbundle cache
.rpt2_cache/
.rts2_cache_cjs/
.rts2_cache_es/
.rts2_cache_umd/

# Optional REPL history
.node_repl_history

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity

# dotenv environment variable files
.env
.env.development.local
.env.test.local
.env.production.local
.env.local

# parcel-bundler cache (https://parceljs.org/)
.cache
.parcel-cache

# Next.js build output
.next
out

# Nuxt.js build / generate output
.nuxt

# Gatsby files
.cache/
# Comment in the public line in if your project uses Gatsby and not Next.js
# https://nextjs.org/blog/next-9-1#public-directory-support
# public

# vuepress build output
.vuepress/dist

# vuepress v2.x temp and cache directory
.temp
.cache

# Docusaurus cache and generated files
.docusaurus

# Serverless directories
.serverless/

# FuseBox cache
.fusebox/

# DynamoDB Local files
.dynamodb/

# TernJS port file
.tern-port

# Stores VSCode versions used for testing VSCode extensions
.vscode-test

# yarn v2
.yarn/cache
.yarn/unplugged
.yarn/build-state.yml
.yarn/install-state.gz
.pnp.*
```

## Instalación del servidor y base de datos en AWS EC2

```bash
    #Creando un nuevo grupo de seguridad para permitir conexiones SSH por defecto (puede ser modificado)
    aws ec2 create-security-group \
    --description 'SSH' \
    --group-name ssh-access \
    --vpc-id vpc-634785f2

    #Agregamos la regla que permite conexión
    SSH desde cualquier IP pública
    aws ec2 authorize-security-group-ingress
    --protocol tcp --port 22 --cidr 0.0.0.0/0 \
    --source-group sg-c0d4e5dc \
    --group-name ssh-access


    #Instalamos Ubuntu Server 20.04 LTS en una instancia con 2 vCPU's y 4GB RAM
    aws ec2 run-...
```
