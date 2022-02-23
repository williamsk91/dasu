# Book Conversion

Book conversion is done using [Pandoc](https://pandoc.org/) with Lua filters. We aim to convert any popular book writing formats (e.g. EPUB) into Markdown. This Markdown files is then used to generate a static book website.

Demo: https://dasu.vercel.app/demo/sicp/1%20Building%20Abstraction%20with%20Procedures/1.1%20The%20Elements%20of%20Programming/1.1.1%20Expressions

Website: https://dasu-web.vercel.app/

Related repo: https://github.com/williamsk91/dasu-web

# Book Website

Built using [Docusaurus 2](https://docusaurus.io/)

![スクリーンショット 2022-02-21 7 13 39](https://user-images.githubusercontent.com/25893551/154862407-e205b4e2-c6da-44a2-9f4e-e7887a0d7912.png)

### Installation

```
$ yarn
```

### Local Development

```
$ yarn start
```

This command starts a local development server and opens up a browser window. Most changes are reflected live without having to restart the server.

### Build

```
$ yarn build
```

This command generates static content into the `build` directory and can be served using any static contents hosting service.
