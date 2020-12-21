# DigiDocs 1.0
## What is this
[DigiDocs 1.0](https://evantay.com/docs/) is a collection of concise tutorials focused on full-stack software engineering and cloud operations.

## Why was this archived

**Timeline**

1. **DigiDocs 1.0 - [MkDocs](https://www.mkdocs.org/)**: January 2019 to October 2020
1. **DigiDocs 2.0 - [Docusaurus v2](https://v2.docusaurus.io/)**: November 2020 to Present

I started my personal documentation website project [DigiDocs](https://digipie.github.io/digidocs/) using [MkDocs](https://www.mkdocs.org/) in January 2019, and kept it updated up until October 2020. I was motivated to do so because I wanted to consolidate useful knowledge gained from attending university classes, and my own self-directed learning.

Back then, I hosted [DigiDocs](https://digipie.github.io/digidocs/) at [evantay.com/docs](https://www.evantay.com/docs/), and a separate [portfolio website](https://github.com/DigiPie/evantay.com) powered by PHP at [evantay.com](https://www.evantay.com).

I ended up replacing both documentation and portfolio site with a single [Docusaurus v2](https://v2.docusaurus.io/) website (GitHub repo: [kaya-folio](https://github.com/DigiPie/kaya-folio)). I did so to keep up with the latest technologies, improve site maintainability, and reduce operating costs.

All documentation articles here have been transferred over to the DigiDocs 2.0 section residing within [kaya-folio](https://github.com/DigiPie/kaya-folio). It was a really easy port given that both MkDocs and Docusaurus v2 use the Markdown file type for documentation content!

## How was this built
DigiDocs is built using [MkDocs](https://github.com/mkdocs/mkdocs/), a static site generator for project documentation, and the [Material for MkDocs](https://github.com/squidfunk/mkdocs-material) theme.

The website is deployed at: 

- ~~Production: [evantay.com/docs/](https://evantay.com/docs/)~~
- Staging on `gh-pages`: [digipie.github.io/digidocs/](https://digipie.github.io/digidocs/) (Legacy)

## Getting started
### Local deployment
To deploy this project locally for development purposes:  

1. Install [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/getting-started/). 
2. Clone this repository.
3. Run `mkdocs serve` in the directory.

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