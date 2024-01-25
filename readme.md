# GT Chamber Choir Constitution

This repository holds AsciiDoc source files with the content of the Constitution and Bylaws for Chamber Choir at Georgia Tech.
With Pandoc, it is possible to generate uniformly-formatted Word documents for each, which can then be exported to PDF for easier viewing.
Note that it is also possible to view the files on GitHub directly, rendered nicely.

## Generating Files

To generate files, the following tools are needed:

* [AsciiDoctor](https://asciidoctor.org/), to generate DocBook files,
* [Pandoc](https://pandoc.org/), to convert from DocBook to Word (or any other format),
* Optionally, [Just](https://github.com/casey/just), a command runner.
  * I could've made a Makefile, but Just was easier for me for this purpose.

The constitution Word file can be generated with the command `just build`.
The output Word document will be located in the `build` directory.
The bylaws can also be generated using `just build bylaws`.

To generate the constitution Word file without Just, run the following commands:

```bash
mkdir -p build
asciidoctor -b docbook5 const.adoc -o build/const.xml
pandoc --reference-doc=pandoc-ref.docx -f docbook -t docx build/const.xml -o build/const.docx
```

And similarly for the bylaws.
