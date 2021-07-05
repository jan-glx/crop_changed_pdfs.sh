# crop_changed_pdfs.sh
A small bash script to crop all pdf files in a directory that have not been cropped yet (e.g. for adopting automatically generated figures for use with LaTeX).
Doesn't modify the original files but adds a cropped version named `<original filename sans extension>-crop.pdf`.

Requires Heiko Oberdiek's [`pdfcrop`](https://ctan.org/pkg/pdfcrop) (included in texlive).

## Usage
`./crop_changed_pdfs.sh <directory containing pdfs to be cropped>`


For example, in [TexStudio](https://github.com/texstudio-org/texstudio), you might want to define a new user command, `crop_changed_pdfs:Crop changed PDFs`, say, that executes `bash "/mnt/c/<path to>/crop_changed_pdfs/crop_changed_pdfs.sh" "?a)figures"` and perhaps add it to you `Precompile` as `txs:///crop_changed_pdfs`, 
