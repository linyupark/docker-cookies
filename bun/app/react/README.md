
```
bun create react [your-app-name]
cd your-app-name
bun dev
```

### Build production bundle for react app

```
bun a react-scripts -d
bun react-scripts build
```

### Adding scripts to your package.json

```
{
  "scripts": {
    "start": "bun dev",
    "build": "react-scripts build"
  }
}
```