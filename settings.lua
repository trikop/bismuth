data:extend({
      {
		    type = "string-setting",
		    name = "bismuth-reduce-pcb-solder",
		    setting_type = "startup",
		    default_value = "Default (reccomended)",
        allowed_values = {"Default (reccomended)","Reduced"},
        order = "aaa"
      },
      {
        type = "bool-setting",
        name = "bismuth-disable-bismuthinite-ore",
        setting_type = "startup",
        default_value = false,
        order = "aab"
      },
      {
        type = "bool-setting",
        name = "bismuth-disable-bismuth-as-smelting-byproduct",
        setting_type = "startup",
        default_value = false,
        order = "aac"
      },
      {
        type = "int-setting",
        name = "bismuth-contain-bismuth",
        setting_type = "startup",
        minimum_value = 1,
        maximum_value = 10000,
        default_value = 8129,
        order = "aad"
      },
      {
        type = "int-setting",
        name = "bismuth-contain-sulfur",
        setting_type = "startup",
        minimum_value = 1,
        maximum_value = 10000,
        default_value = 1871,
        order = "aae"
      },
    })