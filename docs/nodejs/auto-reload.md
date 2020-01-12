# Auto-reload

*Last updated on 12 Jan, 2020*

**Problem:** Manually reloading the NodeJS server by hitting `Ctrl + C` and entering `npm start` repeatedly in development is exhausting.

**Solution:** Automatically reload the server each time there is a change!

## Nodemon

!!! quote
    Nodemon is a utility that will monitor for any changes in your source and automatically restart your server.

### How-to-use
1. Install `nodemon`: `npm i -g nodemon`.
2. Replace `node` with `nodemon` in your command. For example, change `node index.js` to `nodemon index.js`. That's it.

``` bash
npm i -g nodemon
```

### Add to npm scripts
You can also add it to npm scripts to make life even easier.

``` json hl_lines="5"
{
  ...
  "scripts": {
    "start": "node index.js",
    "dev": "nodemon index.js"
  },
  ...
}
```

After doing so, you can enter `npm run dev` subsequently, which will resolve to `nodemon index.js`.

## Resources

- Nodemon's landing page:  
  <https://nodemon.io/>