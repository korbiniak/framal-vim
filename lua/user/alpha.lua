local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local button = require('alpha.themes.dashboard').button

local header = {
    type = "text",
    val = {
	  [[  ____                                      ___                                        ]],
	  [[ /\  _`\                                   /\_ \                     __                ]],
	  [[ \ \ \L\_\_ __    __      ___ ___      __  \//\ \            __  __ /\_\    ___ ___    ]],
	  [[  \ \  _\/\`'__\/'__`\  /' __` __`\  /'__`\  \ \ \   _______/\ \/\ \\/\ \ /' __` __`\  ]],
	  [[   \ \ \/\ \ \//\ \L\.\_/\ \/\ \/\ \/\ \L\.\_ \_\ \_/\______\ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
	  [[    \ \_\ \ \_\\ \__/.\_\ \_\ \_\ \_\ \__/.\_\/\____\/______/\ \___/  \ \_\ \_\ \_\ \_\]],
	  [[     \/_/  \/_/ \/__/\/_/\/_/\/_/\/_/\/__/\/_/\/____/         \/__/    \/_/\/_/\/_/\/_/]],
	},
    opts = {
        position = "center",
        hl = "Type",
        -- wrap = "overflow";
    },
}

local buttons = {
    type = "group",
    val = {
        button("e", "  New file", "<cmd>ene<CR>"),
		button("SPC s l", "  Open last session"),
		button("SPC s o", "  Choose session"),
        button("SPC f", "  Find file"),
        button("SPC h", "  Recently opened files"),
        button("SPC g", "  Find word"),
    },
    opts = {
        spacing = 1,
    },
}

local footer = {
    type = "text",
    val = "framal.xyz",
    opts = {
        position = "center",
        hl = "Number",
    },
}


local config = {
   layout = {
        { type = "padding", val = 2 },
		header,
        { type = "padding", val = 2 },
		buttons,
		footer,
    },
    opts = {
        margin = 5,
    },
}

alpha.setup (
  config
)
