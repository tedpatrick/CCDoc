# Clown Car Docker (CCDoc)

A Docker container for running Claude Code in an isolated environment with access to your git repositories.

## Quick Start

1. Build the container:
```bash
docker build -t ccdoc .
```

2. Run Claude Code with your repository mounted:
```bash
docker run -it -v /path/to/your/repo:/repo ccdoc
```

## What's Included

- Node.js 24-slim base image
- Claude Code CLI
- Git tools for repository management
- Workspace mounted at `/repo` for your code

## Usage

The container starts Claude Code automatically when run. Your repository will be available at `/repo` inside the container with full read/write access.

Replace `/path/to/your/repo` with the actual path to your git repository on the host system.