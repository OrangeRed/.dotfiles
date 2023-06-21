# Source non fish compliant env files
function source-env --wraps 'source'
  for file in $argv
    for line in (cat $file |
        grep -v '^#' |      # Ignore lines that have the # character
        grep -v '^\s*$' |   # Ignore new / empty lines
        grep '^\s*export' | # Select lines that start with 'export'
        sed -e 's/"//g'     # Remove quotation marks
      )

      set item (string replace export "" $line | string split -m 1 '=')
      echo sourced (string trim $item[1])
      set -Ux (string trim $item[1]) (string trim $item[2])
    end
  end
end
