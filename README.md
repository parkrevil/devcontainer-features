# Devcontainer Features

## Usage
Add to the features property in devcontainer.json to use.

### Bun
```jsonc
{
  ...
  "features": {
    "ghcr.io/parkrevil/devcontainer-features/bun:latest": {
      // Specify a version (Optional)
      // Default 1.2.20
      "version": "1.1.1"
    }
  }
  ...
}
```

### Go

```jsonc
{
  ...
  "features": {
    "ghcr.io/parkrevil/devcontainer-features/go:latest": {
      // Specify a version (Optional)
      // Default 1.25.0
      "version": "1.21.2"
    }
  }
  ...
}
```

### Angular Bun

```jsonc
{
  ...
  "features": {
    "ghcr.io/parkrevil/devcontainer-features/angular-bun:latest": {
      // 20.0.0 or ^20 (Optional)
      // Default ^20
      "version": "^19"
    }
  }
  ...
}
```

## Development & Testing

Development and testing should be done inside a Devcontainer.

```bash
devcontainer features test
```