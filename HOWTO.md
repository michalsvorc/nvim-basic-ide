# How To

- [Vim Search and Replace With Examples](https://thevaluable.dev/vim-search-find-replace/)
- [The quickfix and location lists in Vim](https://freshman.tech/vim-quickfix-and-location-list/)

## Surround

- [nvim-surround](https://github.com/kylechui/nvim-surround/blob/v1.0.0/README.md#rocket-usage)

## Search

### Search in current file

- Forward: `/` 
- Backward: `?`
- Case-sensitive: `/<word>\C`
- Case-insensitive: `/<word>\c`

### Search the word under the cursor

- Forward: `*` or `g*` 
- Backward: `#` or `g#`

### Motion search

- [leap.nvim](https://github.com/ggandor/leap.nvim#how-to-use-it-tldr)

Custom key map: all default keys prefixed with `leader`

### Telescope search

- [Telescope](https://github.com/nvim-telescope/telescope.nvim#usage)

```vim
:Telescope live_grep
```

Press `ctrl + q` to send results to the quickfix/loclist.

### Grep search 

```vim
:grep mySearch <path>
```

Where path can be:

- filename
- glob pattern
- `*`: working directory
- `%`: current file

## Find and replace

### Substitute in the current file

- `:s/pattern/replace/g`: current line
- `:%s/pattern/replace/g`: current file
- `:%s//replace/g`: current file

The syntax is similar to [sed](https://www.gnu.org/software/sed/manual/sed.html#sed-regular-expressions).

Manual substitution:

1. Execute a regular search with `/`.
2. Use the keystroke `cgn` on the first result to replace it.
3. Type `n` or `N` to go to the next result.
4. Use `.` to replace the occurrence with the same replacement, or go to the next result if you want to keep it.

### Substitute in multiple files

Populate the quickfix list with `:grep` or Telescope.

Execute search and replace command with `:cdo` in each valid entry in the quickfix list.

```vim
:cdo s/foo/bar/ | up
```

Optionally use `:cfdo` to execute {cmd} in each file in the quickfix list.

## Quickfix list

  `:copen` - Open the quickfix list window.
  `:ccl` or `:cclose` - Close the quickfix list window.
  `:cnext` or `:cn` - Go to the next item on the list.
  `:cprev` or `:cp` - Go to the previous item on the list.
  `:cfirst` - Go to the first item on the list.
  `:clast` - Go to the last item on the list.
  `:cc <n\>` - Go to the nth item.

### Filter quickfix list items

- `:Cfilter` 
- [bqf signs](https://github.com/kevinhwang91/nvim-bqf#filter-with-signs).

## Loclist

Populating the location list is done in the exact same way as the quickfix list, except that 
the built-in commands are prefixed with `l` instead of `c`.

