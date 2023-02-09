local status, rust = pcall(require, 'rust-tools')

if not status then
  vim.notify "rust-tools is required"
  return
end

rust.setup({
  server = {
    standalone = false,
    on_attach = function(_, bufn)
	    local opts = { noremap = true, silent = true, buffer = bufn }
      vim.keymap.set("n", "<leader>ca", rust.code_action_group.code_action_group, opts)
      vim.keymap.set("n", "gd", rust.code_action_group.code_action_group, opts)
      vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
      vim.keymap.set("n", "gf", "<cmd>Telescope lsp_references<CR>", opts)
    end,
    cmd = {
			"rustup",
			"run",
			"nightly",
			"rust-analyzer",
		},
		settings = {
			["rust-analyzer"] = {
				diagnostics = {
	  			experimental = true,
	  		},
	  	},
 	  },
  },
  tools = {
    executor = require("rust-tools/executors").termopen, -- can be quickfix or termopen
    reload_workspace_from_cargo_toml = true,
    hover_actions = {
      border = {
        { "╭", "FloatBorder" },
        { "─", "FloatBorder" },
        { "╮", "FloatBorder" },
        { "│", "FloatBorder" },
        { "╯", "FloatBorder" },
        { "─", "FloatBorder" },
        { "╰", "FloatBorder" },
        { "│", "FloatBorder" },
      },
      auto_focus = true
    }
  }
})
