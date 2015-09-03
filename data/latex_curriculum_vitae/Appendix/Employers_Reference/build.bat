set PATH=%PATH%;E:\Program Files\gs\gs9.14\bin;E:\Program Files\gs\gs9.14\lib
echo "Baue Verzeichnis Arbeitszeugnisse"
gswin64c -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile=Arbeitszeugnisse.pdf haysnew.pdf openslx.pdf openslx1.pdf wtg.pdf
echo "Verzeichnis Arbeitszeugnisse abgeschlossen"