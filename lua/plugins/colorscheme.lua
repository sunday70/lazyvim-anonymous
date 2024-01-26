return {
  "neanias/everforest-nvim",
  lazy = true,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    return {
      -- Your config here
      transparent = false,
    }
  end,
}
