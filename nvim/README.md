# NVIM configuration
Using this repo to manage my nvim configuration.

### Vim stuff
#### select a block and replace using regex
- Select a block of text using visual mode
- type `s/<string-to-replace>/<new-text>/`

### Hotkeys to remember
#### NVIM-Tree (file-explorer)
- `R` (refresh) to perform a reread of the files contained in the project
- `H` (hide) to hide/display hidden files and folders (beginning with a dot .)
- `E` (expand_all) to expand the entire file tree starting from the root folder (workspace)
- `W` (collapse_all) to close all open folders starting from the root folder
- `-` (dir_up) allows you to go back up folders. This navigation also allows you to exit the root folder (workspace) to your home directory
- `s` (system) to open the file with the system application set by default for that file type
- `f` (find) to open the interactive file search to which search filters can be applied
- `F` to close the interactive search
- `Ctrl + k` to display information about the file such as size, creation date, etc.
- `g + ?` to open the help with all the predefined shortcuts for quick reference
- `q` to close the file explorer
- `a` to create a new file (to create a directory suffix with `/`)
- `r` to rename a file

#### Navigate source
- `shift` + `k` - Display function/variable signature
- `gd` - Go to definition
- `ctrl` + `o` - Go to previous cursor location (return after `gd`)
- `ctrl` + `i` - Go to next cursor location

#### comment out lines
##### NORMAL mode

- `gcc` - Toggles the current line using linewise comment
- `gbc` - Toggles the current line using blockwise comment
- `[count]gcc` - Toggles the number of line given as a prefix-count using linewise
- `[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
- `gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
- `gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment

##### VISUAL mode

- `gc` - Toggles the region using linewise comment
- `gb` - Toggles the region using blockwise comment

#### Auto-complete
- trigger in insert mode with `ctrl+x` + `ctrl+o`
- browser using `ctrl+n` (next) and `ctrl+p` (prev)
- go to definition using `ctrl + ]` and go back using `ctrl+t`
- `K` shows info box for the function
- `=G` will format the file for you
- `grr` show references
- `grn` rename variable

### References
- https://github.com/radleylewis/nvim-lite/blob/youtube_demo/init.lua
- https://vineeth.io/posts/neovim-setup
- https://www.josean.com/posts/how-to-setup-neovim-2024
