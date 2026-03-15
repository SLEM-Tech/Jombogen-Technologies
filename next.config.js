/** @type {import('next').NextConfig} */
const nextConfig = {
	images: {
		remotePatterns: [
			{
				protocol: "https",
				hostname: "**",
			},
		],
		unoptimized: true,
	},
	turbopack: {},
	typescript: {
    ignoreBuildErrors: true,
  },
};

module.exports = nextConfig;
