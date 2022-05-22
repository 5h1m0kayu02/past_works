# Custom PDFMiner for Windows 10

## Install

**Environment**

* Windows 10
    - Git Bash

**Requirements**

* Python 3.9.x
    - pip (Python Installs Packages)

```bash
$ python --version
## Python 3.9.x
```

* [PDFMiner](https://github.com/euske/pdfminer)

```bash
$ pip install pdfminer
```

```bash
$ tmp=$(pip list); echo "${tmp}" | sed -n 1,2p; echo "${tmp}" | grep pdfminer
## Package      Version
## ------------ --------
## pdfminer     20191125
```

## How to use

```bash
$ cd custom-pdfminer-for-windows-10

$ sh main.sh README.pdf
```

## Confirmation

```bash
$ less result/README.txt
```
