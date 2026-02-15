module_name := "squares"
zip_file := f"t-{{module_name}}.zip" 
tex_module_file := f"t-{{module_name}}.mklx"
tex_doc_file := f"t-{{module_name}}.pdf"
temp_folder := "temp"
tex_folder := f"{{temp_folder}}/tex/context/third/{{module_name}}"
doc_folder := f"{{temp_folder}}/doc/context/third/{{module_name}}"

build:
  -rm *.pdf "{{zip_file}}"
  mkdir -p "{{tex_folder}}"
  mkdir -p "{{doc_folder}}"
  context "{{tex_module_file}}"
  mtxrun --script context --purgeall
  cp "LICENSE" "VERSION" "CHANGELOG.md" "README.md" "{{temp_folder}}"
  cp "{{tex_module_file}}" "{{tex_folder}}"
  cp "meta-imp-latinsquare.lmt" "meta-imp-latinsquare.mkxl" "meta-imp-magicsquare.lmt" "meta-imp-magicsquare.mkxl" "{{tex_folder}}"
  cp "{{tex_doc_file}}" "{{doc_folder}}"
  cd "{{temp_folder}}" && zip -r "../{{zip_file}}" .
  rm -rf "{{temp_folder}}"
