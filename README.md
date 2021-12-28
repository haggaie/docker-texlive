# Usage

Run `pdflatex` for example with:
```shell
    docker run --rm -v ${PWD}:/document haggaie/texlive pdflatex <filename.tex>
```

Check the example [Makefile](Makefile) for how you may use this image in a project.

For Visual Studio Code's LaTeX Workshop extension, add the following snippet to your workspace settings.

```json
    {
        "latex-workshop.docker.enabled": true,
        "latex-workshop.docker.image.latex": "haggaie/texlive",
    }
```