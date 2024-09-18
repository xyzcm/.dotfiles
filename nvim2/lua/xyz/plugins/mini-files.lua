return {
  "echasnovski/mini.files",
  opts = {
    -- Module mappings created only inside explorer.
    -- Use `''` (empty string) to not create one.
    mappings = {
      close = "q",
      -- Use this if you want to open several files
      go_in = "l",
      -- This opens the file, but quits out of mini.files (default L)
      go_in_plus = "<CR>",
      -- I swapped the following 2 (default go_out: h)
      -- go_out_plus: when you go out, it shows you only 1 item to the right
      -- go_out: shows you all the items to the right
      go_out = "H",
      go_out_plus = "h",
      -- Default <BS>
      reset = ",",
      -- Default @
      reveal_cwd = ".",
      show_help = "g?",
      -- Default =
      synchronize = "s",
      trim_left = "<",
      trim_right = ">",
    },
    windows = {
      preview = true,
      width_focus = 30,
      width_preview = 30,
    },
    options = {
      -- Whether to use for editing directories
      -- Disabled by default in LazyVim because neo-tree is used for that
      use_as_default_explorer = true,
      -- If set to false, files are moved to the trash directory
      -- To get this dir run :echo stdpath('data')
      -- ~/.local/share/nvim/mini.files/trash
      permanent_delete = false,
    },
  },
  keys = {
    {
      "<leader>e",
      function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = "Open mini.files (Directory of Current File)",
    },
    {
      "<leader>E",
      function()
        require("mini.files").open(vim.uv.cwd(), true)
      end,
      desc = "Open mini.files (cwd)",
    },
  },
  config = function(_, opts)
    require("mini.files").setup(opts)

    local show_dotfiles = true
    local filter_show = function(fs_entry)
      return true
    end
    local filter_hide = function(fs_entry)
      return not vim.startswith(fs_entry.name, ".")
    end

    local toggle_dotfiles = function()
      show_dotfiles = not show_dotfiles
      local new_filter = show_dotfiles and filter_show or filter_hide
      require("mini.files").refresh({ content = { filter = new_filter } })
    end

    local map_split = function(buf_id, lhs, direction, close_on_file)
      local rhs = function()
        local new_target_window
        local cur_target_window = require("mini.files").get_target_window()
        if cur_target_window ~= nil then
          vim.api.nvim_win_call(cur_target_window, function()
            vim.cmd("belowright " .. direction .. " split")
            new_target_window = vim.api.nvim_get_current_win()
          end)

          require("mini.files").set_target_window(new_target_window)
          require("mini.files").go_in({ close_on_file = close_on_file })
        end
      end

      local desc = "Open in " .. direction .. " split"
      if close_on_file then
        desc = desc .. " and close"
      end
      vim.keymap.set("n", lhs, rhs, { buffer = buf_id, desc = desc })
    end

    local files_set_cwd = function()
      local cur_entry_path = MiniFiles.get_fs_entry().path
      local cur_directory = vim.fs.dirname(cur_entry_path)
      if cur_directory ~= nil then
        vim.fn.chdir(cur_directory)
      end
    end

    vim.api.nvim_create_autocmd("User", {
      pattern = "MiniFilesBufferCreate",
      callback = function(args)
        local buf_id = args.data.buf_id

        vim.keymap.set(
          "n",
          opts.mappings and opts.mappings.toggle_hidden or "g.",
          toggle_dotfiles,
          { buffer = buf_id, desc = "Toggle hidden files" }
        )

        vim.keymap.set(
          "n",
          opts.mappings and opts.mappings.change_cwd or "gc",
          files_set_cwd,
          { buffer = args.data.buf_id, desc = "Set cwd" }
        )

        map_split(buf_id, opts.mappings and opts.mappings.go_in_horizontal or "<C-w>s", "horizontal", false)
        map_split(buf_id, opts.mappings and opts.mappings.go_in_vertical or "<C-w>v", "vertical", false)
        map_split(buf_id, opts.mappings and opts.mappings.go_in_horizontal_plus or "<C-w>S", "horizontal", true)
        map_split(buf_id, opts.mappings and opts.mappings.go_in_vertical_plus or "<C-w>V", "vertical", true)
      end,
    })

  local set_mark = function(id, path, desc)
    MiniFiles.set_bookmark(id, path, { desc = desc })
  end
  vim.api.nvim_create_autocmd('User', {
    pattern = 'MiniFilesExplorerOpen',
    callback = function()
      -- set_mark('c', vim.fn.stdpath('config'), 'Config') -- path
      set_mark('w', vim.fn.getcwd, 'Working directory') -- callable
      set_mark('h', '~', 'Home directory')
      set_mark('n', '~/.config/nvim', 'Neovim config')
      set_mark('g', '~/.config/nvim/lua/xyz/plugins', 'Neovim plugins config')
      set_mark('z', '~/.config/vifm', 'Vifm config')
      set_mark('s', '~/.local/src', 'Suckless config')
      set_mark('d', '~/Downloads', 'Downloads')
      set_mark('c', '~/Documents', 'Downloads')
      set_mark('t', '~/.local/share/nvim/mini.files/trash', 'MiniFiles trash folder')
      set_mark('T', '~/.local/share/Trash/files', 'Vifm trash folder')
    end,
  })
  end
}
