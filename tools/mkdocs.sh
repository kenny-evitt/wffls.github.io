#!/bin/bash

function gendoc {
  _line_count=0
  _name=$1
  _file=$2

  sed -e '/() {$/q' -r -e 's/^#\ ?//' "$_file" | grep -v "\(\) {" | sed -e '/^=/ s/=/#/g' > "../docs/resources/$_name.md"
  echo "    - ${_name}: 'resources/${_name}.md'" >> ../mkdocs.yml
}

cp mkdocs.yml.base ../mkdocs.yml

for file in $(find /opt/waffles/resources/ -name \*.sh | sort); do
  _name="$(basename $file | sed -e 's/\.sh//g' -e "s/_/./")"
  gendoc "$_name" "$file"
done
