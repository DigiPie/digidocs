# DigiDocs
## What is this
[DigiDocs](https://evantay.com/docs/) is a collection of concise, to-the-point tutorials and references for my personal use. It is a way for me to document what I learn in a concise manner. I do so because I want to minimise time spent re-learning things.

## How was this built
DigiDocs is built using [MkDocs](https://github.com/mkdocs/mkdocs/), a static site generator for project documentation, and the [Material for MkDocs](https://github.com/squidfunk/mkdocs-material) theme.

The website is deployed at: 

- Production: [evantay.com/docs/](https://evantay.com/docs/)
- Staging on `gh-pages`: [digipie.github.io/digidocs/](https://digipie.github.io/digidocs/)

## Getting started
### Local deployment
To deploy this project locally for development purposes:  

1. Change directory to the project root `digidocs/`.
2. Run `mkdocs serve`.

### Deploying to Github pages
To deploy this project to Github pages using the `gh-pages` branch:

1. Change directory to the project root `digidocs/`.
2. Run `mkdocs gh-deploy`.

### Deploying elsewhere
To deploy this project elsewhere, such as a static site host:

1. Change directory to the project root.
2. Run `mkdocs build`.
3. Transfer the `site/` directory to your web root.

Find out more at [MkDocs's documentation](https://www.mkdocs.org/).