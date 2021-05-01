" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/home/nicolas/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/nicolas/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/nicolas/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/nicolas/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/nicolas/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  MatlabFilesEdition = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/MatlabFilesEdition"
  },
  dracula = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/dracula"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tinit\flspkind\frequire\0" },
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-fish"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/opt/vim-fish"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-matlab-behave"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/opt/vim-matlab-behave"
  },
  ["vim-numbertoggle"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/vim-numbertoggle"
  },
  ["vim-pandoc"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/opt/vim-pandoc"
  },
  ["vim-pandoc-syntax"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/vim-pandoc-syntax"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/vim-vinegar"
  },
  vimade = {
    loaded = true,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/start/vimade"
  },
  vimtex = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nicolas/.local/share/nvim/site/pack/packer/opt/vimtex"
  }
}

time("Defining packer_plugins", false)
-- Config for: lspkind-nvim
time("Config for lspkind-nvim", true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tinit\flspkind\frequire\0", "config", "lspkind-nvim")
time("Config for lspkind-nvim", false)
-- Config for: gitsigns.nvim
time("Config for gitsigns.nvim", true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time("Config for gitsigns.nvim", false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time("Defining lazy-load filetype autocommands", true)
vim.cmd [[au FileType matlab ++once lua require("packer.load")({'vim-matlab-behave'}, { ft = "matlab" }, _G.packer_plugins)]]
vim.cmd [[au FileType pandoc ++once lua require("packer.load")({'vim-pandoc'}, { ft = "pandoc" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-pandoc'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType latex ++once lua require("packer.load")({'vimtex'}, { ft = "latex" }, _G.packer_plugins)]]
vim.cmd [[au FileType fish ++once lua require("packer.load")({'vim-fish'}, { ft = "fish" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'vimtex'}, { ft = "tex" }, _G.packer_plugins)]]
time("Defining lazy-load filetype autocommands", false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
