#!/usr/bin/env janet
(use sh)
(import cmd)

(cmd/main (cmd/fn "Wrap filetype in quotes"
                  [search (required :string)
                   replace (required :string)
                   [file-type-string -f --filetype] (required :string)]
                  (def command-string (string `find . -type f -name '` file-type-string `' -print0 | xargs -0 sed -i '' ` (string/format "s/%s/%s/g" search replace)))
                  ($ sh -c ,command-string)))
