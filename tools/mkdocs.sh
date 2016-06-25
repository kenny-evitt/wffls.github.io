#!/bin/bash

function gendoc {
  _line_count=0
  _name=$1
  _file=$2

  #while read -r line; do
  #  if [[ $line =~ ^# ]]; then
  #    if [[ $_line_count -eq 3 ]]; then
  #      echo "# $_name" > "../resources/$_name.md"
  #    fi
#
#      if [[ $_line_count -gt 3 ]]; then
#        echo "$_line" >> "../resources/$_name.md"
#      fi
#    fi
#  done < <(sed -e '/() {$/q' -r -e 's/^#\ ?//' "$_file" | grep -v "\(\) {" | sed -e '/^#/ s/#/=/g')
  sed -e '/() {$/q' -r -e 's/^#\ ?//' "$_file" | grep -v "\(\) {" | sed -e '/^=/ s/=/#/g' > "../docs/resources/$_name.md"
  echo "    - ${_name}: 'resources/${_name}.md'" >> ../mkdocs.yml
}

cp mkdocs.yml.base ../mkdocs.yml

for file in $(find /opt/waffles/resources/ -name \*.sh | sort); do
  _name="$(basename $file | sed -e 's/\.sh//g' -e "s/_/./")"
  gendoc "$_name" "$file"
done
