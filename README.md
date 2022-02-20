# Website

This website is built using [Docusaurus 2](https://docusaurus.io/), a modern static website generator.

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

### Deployment

```
$ GIT_USER=<Your GitHub username> USE_SSH=true yarn deploy
```

If you are using GitHub pages for hosting, this command is a convenient way to build the website and push to the `gh-pages` branch.
