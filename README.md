# Homebrew Tap

Personal Homebrew tap for distributing CLI tools and macOS applications (ARM64 only).

## Usage

### Add the tap

```bash
brew tap raphaelmitas/tap
```

### Install a CLI tool

```bash
brew install raphaelmitas/tap/<formula-name>
```

### Install a macOS app

```bash
brew install --cask raphaelmitas/tap/<cask-name>
```

## Available Formulas

| Formula | Description |
|---------|-------------|
| `example-cli` | Template formula (replace with your tools) |

## Available Casks

| Cask | Description |
|------|-------------|
| `example-app` | Template cask (replace with your apps) |

## Adding New Packages

### CLI Tools

1. Copy `Formula/example-cli.rb` to `Formula/your-tool.rb`
2. Update the class name, description, homepage, and URLs
3. Build your tool and create a GitHub release with the ARM64 binary
4. Run the `update-formula` workflow with the formula name and release tag
5. Users can then install with `brew install raphaelmitas/tap/your-tool`

### macOS Apps

1. Copy `Casks/example-app.rb` to `Casks/your-app.rb`
2. Update the version, description, homepage, URLs, and zap paths
3. Create a GitHub release with a `.zip` containing your `.app` bundle
4. Run the `update-cask` workflow with the cask name and release tag
5. Users can then install with `brew install --cask raphaelmitas/tap/your-app`

## Updating Packages

1. Create a new release on the source repository (e.g., `v1.1.0`)
2. Go to this repository's Actions tab
3. Run the appropriate workflow (`update-formula` or `update-cask`)
4. Enter the formula/cask name and the new release tag
5. The workflow will automatically update the SHA256 checksum and version

## Local Testing

```bash
# Test locally before pushing
brew tap --force-auto-update raphaelmitas/tap /path/to/homebrew-tap
brew install raphaelmitas/tap/example-cli

# After pushing to GitHub
brew untap raphaelmitas/tap
brew tap raphaelmitas/tap
brew install raphaelmitas/tap/your-tool
```

## License

MIT
