local Snacks = require "snacks"

local function get_directories()
  local directories = {}
  local handle = io.popen "fd . --type directory"

  if handle then
    for line in handle:lines() do
      table.insert(directories, line)
    end

    handle:close()
  else
    print "Failed to execute fd command"
  end

  return directories
end

local pick_directories = function()
  local dirs = get_directories()

  return Snacks.picker {
    finder = function()
      local items = {}

      for i, item in ipairs(dirs) do
        table.insert(items, {
          idx = i,
          file = item,
          text = item,
        })
      end

      return items
    end,
    confirm = function(picker, item)
      picker:close()

      local dir = Snacks.git.get_root(item.file)

      if dir then
        vim.fn.chdir(dir)

        Snacks.picker.pick("files", {
          dirs = { vim.fn.getcwd() },
        })
      else
        Snacks.picker.pick("files", {
          dirs = { item.file },
        })
      end
    end,
  }
end

return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        keys = {
          { icon = "󰺄 ", key = "p", desc = "Find Projects", action = ":lua Snacks.dashboard.pick('projects')" },
          { icon = "󰥨 ", key = "d", desc = "Find Directory", action = function() pick_directories() end },
          { icon = "󰱼 ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = "󱎸 ", key = "w", desc = "Find Word", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
      sections = {
        {
          section = "terminal",
          cmd = "pokeget --hide-name darkrai; sleep .1",
          height = 14,
          indent = 15,
          ttl = 86400,
          padding = 2,
        },
        {
          title = "Keymaps",
          section = "keys",
          indent = 2,
          padding = 2,
        },
        {
          title = "Projects",
          section = "projects",
          indent = 2,
          padding = 2,
          limit = 10,
        },
        {
          title = "Recent Files",
          section = "recent_files",
          indent = 2,
          padding = 2,
        },
        { section = "startup" },
      },
    },
  },
}
