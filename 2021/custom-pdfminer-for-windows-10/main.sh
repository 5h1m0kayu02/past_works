#!/bin/sh

sourcePath="$1" # required

if [ -z "${sourcePath}" ]; then
    echo "no argument specified"
    exit 1
fi

if [ ! -f "${sourcePath}" ]; then
    echo "'${sourcePath}' does not exist. nothing to do."
    exit 1
fi

pathOfPdf2txtPy="$HOME/AppData/Local/Programs/Python/Python39/Scripts/pdf2txt.py"

if [ ! -f "${pathOfPdf2txtPy}" ]; then
    echo "'${pathOfPdf2txtPy}' does not exist. nothing to do."
    exit 1
fi

if [ ! -d result ]; then
    mkdir result
fi

destinationPath=result/"$(basename "${sourcePath}" .pdf)".txt

main_func() {
    python "${pathOfPdf2txtPy}" -o "${destinationPath}" -t text "${sourcePath}" || return 1
    tmpfile="$(dirname "${sourcePath}")"/tmpfile
    sed s///g <"${destinationPath}" >"${tmpfile}" && mv "${tmpfile}" "${destinationPath}"
}

if main_func; then
    echo "created '${destinationPath}'"
else
    printf "\n" # 空白行
    echo "skip process since main function has failed"
    printf "\n" # 空白行
    echo "#####rollback#####"
    rm -v "${destinationPath}"
    exit 1
fi
