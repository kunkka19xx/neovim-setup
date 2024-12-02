return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			{
				"fredrikaverpil/neotest-golang",
				version = "*",
				dependencies = { "leoluz/nvim-dap-go" },
			},
			"sidlatau/neotest-dart",
			"lawrence-laz/neotest-zig",
			{
				"rcasia/neotest-java",
				ft = "java",
				dependencies = {
					"mfussenegger/nvim-jdtls",
					"mfussenegger/nvim-dap", -- for the debugger
					"rcarriga/nvim-dap-ui", -- recommended
					"theHamsta/nvim-dap-virtual-text", -- recommended
				},
			},
		},
		config = function()
			require("neotest").setup({
				adapters = {
					require("neotest-golang")({ recursive_run = true }), -- Registration
					-- require :NeotestJava setup
					["neotest-java"] = {},
					require("neotest-dart")({
						command = "flutter", -- Command being used to run tests. Defaults to `flutter`
						-- Change it to `fvm flutter` if using FVM
						-- change it to `dart` for Dart only tests
						use_lsp = true, -- When set Flutter outline information is used when constructing test name.
						-- Useful when using custom test names with @isTest annotation
						custom_test_method_names = {},
					}),
					-- Registration
					require("neotest-zig")({
						dap = {
							adapter = "lldb",
						},
					}),
				},
			})

			vim.keymap.set("n", "<Leader>tr", ':lua require("neotest").run.run()<CR>', {})
			-- run with debugging
			vim.keymap.set("n", "<Leader>tb", ':lua require("neotest").run.run({strategy = "dap"})<CR>', {})
			vim.keymap.set("n", "<Leader>ts", ':lua require("neotest").run.stop()<CR>', {})
			vim.keymap.set("n", "<Leader>to", ':lua require("neotest").output.open()<CR>', {})
			-- open and jump in to the dialog
			vim.keymap.set("n", "<Leader>tO", ':lua require("neotest").output.open({ enter = true })<CR>', {})
			-- run all test
			vim.keymap.set("n", "<Leader>tf", ':lua require("neotest").summary.toggle()<CR>', {})
			vim.keymap.set("n", "<Leader>tf", ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>', {})
		end,
	},
}
