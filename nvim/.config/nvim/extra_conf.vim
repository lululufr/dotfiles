options = {
    g = {
      copilot_no_tab_map = true,
      copilot_assume_mapped = true,
      copilot_tab_fallback = "",
    },
  },
  mappings = {
    i = {
      ["<C-cr>"] = { "copilot#Accept(<Tab>)", silent = true, expr = true, script = true },
    }
  }
