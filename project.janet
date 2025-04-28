(declare-project
  :name "replace"
  :description "A shell script template"
  :version "1.0.0"
  :dependencies ["https://github.com/ianthehenry/cmd.git"
                 "https://github.com/andrewchambers/janet-sh.git"
                 "https://github.com/janet-lang/spork.git"])

(declare-source
  :source ["src/main.janet"]
  :prefix "replace")

(declare-executable
  :name "replace"
  :entry "src/main.janet")

(import spork/fmt)

(task "fmt" []
      (do
        (fmt/format-file "src/main.janet")))
