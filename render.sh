#!/usr/bin/env bash

# pre created directory structure
for i in $(fd . -t d -d 5 './templates'); do
    new_path=$(python3 -c "import os;p=os.path.join('outputs', os.path.relpath('${i}',start='./templates'));print(p)")
    echo "Rendering ${new_path}"
    mkdir -p "${new_path}" || true
done

# render files with extension .j2
for j in $(fd . -H -t f -e j2 -d 5 './templates'); do
    old_path=$(python3 -c "import os;p=os.path.join(os.path.relpath('${j}'));print(p)")
    new_path=$(python3 -c "import os;p=os.path.join('outputs', os.path.relpath('${j}',start='./templates')).replace('.j2','');print(p)")

    echo "Rendering ${old_path} -> ${new_path}"
    echo "jinja render -d ./data.yaml -t \"./${old_path}\" -o \"./${new_path}\""
    jinja render -d ./data.yaml -t "./${old_path}" -o "./${new_path}"
done
