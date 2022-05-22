# demo-autogen-sourcecode

## requirements

* csvq

> download: https://github.com/mithrandie/csvq/releases

## deploy

```bash
$ cd demo-autogen-sourcecode

$ csvq=$(ls -1 ~/downloads | grep csvq) && echo "$csvq"
## csvq-v1.17.0-windows-amd64.tar.gz

$ cp -ip ~/downloads/"$csvq" . && ls -1 | grep "$csvq"
## csvq-v1.17.0-windows-amd64.tar.gz

$ tar zxvf "$csvq"
## csvq-v1.17.0-windows-amd64/
## csvq-v1.17.0-windows-amd64/README.md
## csvq-v1.17.0-windows-amd64/csvq.exe
## csvq-v1.17.0-windows-amd64/BINARY_CODE_LICENSE
## csvq-v1.17.0-windows-amd64/LICENSE
## csvq-v1.17.0-windows-amd64/CHANGELOG.md

$ mv -v $(basename ${csvq} .tar.gz) csvq
## renamed 'csvq-v1.17.0-windows-amd64' -> 'csvq'

$ ls -1 | grep csvq
## csvq/
## csvq-v1.17.0-windows-amd64.tar.gz

$ rm "$csvq" && ls -1 | grep csvq
## csvq/
```

## demonstration

```bash
$ cd demo-autogen-sourcecode

$ sh test.sh Hello
## [INFO] *****test.sh START*****
## Hello
## [INFO] *****test.sh END*****

$ sh entity_generator.sh "${DEST_DIR}"
## [INFO] *****entity_generator.sh START*****
## [DEBUG] created 'Hoge.java'
## [INFO] *****entity_generator.sh END*****
```
