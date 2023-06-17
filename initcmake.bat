cmake . -DCMAKE_EXPORT_COMPILE_COMMANDS=YES
jq '[.[] | {directory: .directory, file: .file, arguments: .command | split(" ") | map(select(length > 0)) | map(sub("\\\\\""; "\""; "g"))}]' < compile_commands.json
jq '[.[] | {directory: .directory, file: .file, arguments: .command | split(" ") | map(select(length > 0 and . != "--")) | map(sub("\\\\\""; "\""; "g"))}]' < compile_commands.json
