return {
	"mistricky/codesnap.nvim",
	build = "make",
	config = function()
		require("codesnap").setup({
			-- The save_path must be ends with .png, unless when you specified a directory path,
			-- CodeSnap will append an auto-generated filename to the specified directory path
			-- For example:
			-- save_path = "~/Pictures"
			-- parsed: "~/Pictures/CodeSnap_y-m-d_at_h:m:s.png"
			-- save_path = "~/Pictures/foo.png"
			-- parsed: "~/Pictures/foo.png"
      mac_window_bar = false,
			save_path = "~/Pictures",
			has_breadcrumbs = true,
			breadcrumbs_separator = "/",
			bg_theme = "grape",
			watermark = "CodeSnap.nvim",
		})
	end,
	vim.keymap.set("v", "<leader>sc", ":CodeSnap<CR>"),
}
