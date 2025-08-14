data:extend({
  {
    type = "shortcut",
    name = "toggle-foundation",
    action = "lua",
    toggleable = true,
    icon = "__space-age__/graphics/icons/foundation.png",
    small_icon = "__space-age__/graphics/icons/foundation.png",
    disabled_small_icon = "__space-age__/graphics/icons/foundation.png"
  },
  {
    type = "shortcut",
    name = "toggle-landfill",
    action = "lua",
    toggleable = true,
    icon = "__base__/graphics/icons/landfill.png",
    small_icon = "__base__/graphics/icons/landfill.png",
    disabled_small_icon = "__base__/graphics/icons/landfill.png"
  },
  {
    type = "shortcut",
    name = "toggle-cliffexp",
    action = "lua",
    toggleable = true,
    icon = "__base__/graphics/icons/cliff-explosives.png",
    small_icon = "__base__/graphics/icons/cliff-explosives.png",
    disabled_small_icon = "__base__/graphics/icons/cliff-explosives.png"
  }
})

data:extend{
  {
    type = "custom-input",
    name = "toggle-foundation",
    key_sequence = "",
    consuming = "none"
  },
  {
    type = "custom-input",
    name = "toggle-landfill",
    key_sequence = "",
    consuming = "none"
  },
  {
    type = "custom-input",
    name = "toggle-cliffexp",
    key_sequence = "",
    consuming = "none"
  },
}