# Archer's Neovim
---
## requirements
nodejs, npm, gcc, g++, cargo
nvim-tree是一个用Lua编写的Neovim文件浏览器插件，它有很多常用的快捷键，可以方便地对文件和文件夹进行操作。根据我搜索到的结果¹²³⁴，这里列举一些常见的快捷键：

- `:NvimTreeToggle`：打开或关闭nvim-tree窗口
- `:NvimTreeRefresh`：刷新nvim-tree窗口
- `:NvimTreeFindFile`：在nvim-tree窗口中定位当前打开的文件
- `o`：打开或关闭文件夹，或者打开文件
- `<CR>`：同`o`
- `<C-v>`：在垂直分屏中打开文件
- `<C-x>`：在水平分屏中打开文件
- `<C-t>`：在新标签页中打开文件
- `h`：关闭文件夹或者跳到父文件夹
- `l`：打开文件夹或者进入子文件夹
- `r`：重命名文件或文件夹
- `<C-r>`：刷新当前目录
- `a`：创建一个新的文件
- `<leader>a`：创建一个新的文件夹
- `x`：剪切选中的文件或文件夹
- `c`：复制选中的文件或文件夹
- `p`：粘贴剪切或复制的内容
- `[c`：跳到上一个有诊断信息的节点
- `]c`：跳到下一个有诊断信息的节点
- `-`：跳到根目录
- `<BS>`：跳到上一级目录
- `<Tab>`：切换显示隐藏文件
- `I`：切换显示图标
- `R`：切换显示相对路径或绝对路径
- `.`：切换显示点号开头的隐藏文件

这些快捷键都可以在nvim-tree的设置中自定义，你可以参考nvim-tree的主页⁴来了解更多的配置选项和功能。希望这些信息对你有帮助。😊

源: 与必应的对话， 2023/9/15
(1) Neovim 插件 nvim-tree 的安装与配置 - 知乎. https://zhuanlan.zhihu.com/p/439574087.
(2) Neovim 的快捷键配置 - 知乎. https://zhuanlan.zhihu.com/p/435680085.
(3) Neovim 插件 bufferline 的安装与配置 - 知乎. https://zhuanlan.zhihu.com/p/440349051.
(4) GitHub - nvim-tree/nvim-tree.lua: A file explorer tree for neovim .... https://github.com/nvim-tree/nvim-tree.lua.