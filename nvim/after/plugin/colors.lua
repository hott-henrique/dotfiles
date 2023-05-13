function ColorMyPencils(color)
	color = color or "edge"

	vim.g.edge_colors_override = {
		-- Editor background color.
		bg0= { "#0E0D14", "234" },

		-- Option background color.
		bg2= { "#191724", "235" }
	}

	vim.cmd.colorscheme(color)

	-- Uncommment these lines if you want tranparent background.
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
