wsnum=$(i3-msg -t get_workspaces | jq ' map(select(.focused)) | .[].name | match("^[0-9]+";"") | .string' | sed 's/"//g')

i3-input -F "rename workspace to \"${wsnum}: %s\"" -P 'New name: '
