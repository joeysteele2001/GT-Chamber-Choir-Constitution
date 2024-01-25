build filename="const": (word filename)

docbook filename="const":
    mkdir -p build
    asciidoctor -b docbook5 {{filename}}.adoc -o build/{{filename}}.xml

word filename="const": (docbook filename)
    pandoc --reference-doc=pandoc-ref.docx -f docbook -t docx build/{{filename}}.xml -o build/{{filename}}.docx

clean:
    rm -rf build

