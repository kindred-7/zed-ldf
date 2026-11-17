# zed-ldf

Zed 编辑器的 LIN Description File（.ldf）语言支持：语法高亮、大纲。

## 目录结构

```
zed-ldf/
├── extension.toml            扩展清单（无 LSP，无需 Rust 代码）
├── languages/ldf/            config.toml + highlights/outline.scm
│                             （查询文件必须直接放此目录，不能放 queries/ 子目录）
└── grammars/tree-sitter-ldf/ tree-sitter 语法（本项目自写，MIT）
                              基于 LIN 2.x / ISO 17987-2 描述文件语法，
                              节点均带字段名以支持精确高亮/大纲查询
```

## 高亮设计

与 zed-dbc 同一套层级：结构名（帧/调度表/节点，@type）> 信号名（@property）
> 收发方节点（@constant）> 数值/字符串 > 注释与自由文本（@comment）。

## 安装（开发模式）

Zed 命令面板运行 `zed: install dev extension`，选择本目录（zed-ldf）。

## 发布到 Zed 扩展市场

1. 把 `grammars/tree-sitter-ldf` 推送到
   `https://github.com/kindred-7/tree-sitter-ldf`，
   并把 extension.toml 的 repository 换成 HTTPS 地址
2. 把本项目推送到公开仓库（如 `https://github.com/kindred-7/zed-ldf`）
3. fork `zed-industries/extensions`，`git submodule add <仓库URL> extensions/ldf`，
   `extensions.toml` 加条目（version 与 extension.toml 一致）：

   ```toml
   [ldf]
   submodule = "extensions/ldf"
   version = "0.1.0"
   ```

   然后 `pnpm sort-extensions`，提 PR
