const path = require('path');

module.exports = {
	mode: 'development',
	entry: './src/app.bs.js',
	output: {
		path: path.resolve(__dirname, 'public'),
		filename: 'bundle.js',
	},
	devServer: {
			publicPath: "/",
			contentBase: "./public",
			port: 8080,
	},
};
