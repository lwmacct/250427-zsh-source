# Overview

- Use [Taskfile](https://taskfile.dev) to manage the project's CLI
- 在 `~/.zshrc` 添加以下配置, Git 本地路径 `~/.zsh_source`

```bash
for _file in ~/.zsh_source/*.sh; do
    if [[ -r $_file ]]; then
        source "$_file"
    fi
done
```

# Related Links

- https://github.com/lwmacct
