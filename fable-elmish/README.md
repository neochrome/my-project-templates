## Requirements

* [dotnet SDK](https://www.microsoft.com/net/download/core) 3.0 or higher
* [node.js](https://nodejs.org) with [npm](https://www.npmjs.com/)

## Building and running the app

* Install dependencies: `npm install`
* Build and run (watch mode): `npm start`
* After the first compilation is finished, in your browser open: http://localhost:8080/
* To build in production mode: `npm run build`

## Project structure

### npm

Dependencies are declared in `package.json`.

### F#

Project (.fsproj) and source file(s) (.fs) are in the `src` folder.
Dependencies are declared in `paket.dependencies` and `src/paket.references`.

### Web assets

The `index.html` file and other assets like an icon can be found in the `public` folder.
