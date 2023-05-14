data:extend({
    {
		type = "string-setting",
		name = "bismuth-disable-pcb-solder",
		setting_type = "startup",
		default_value = "Remove none (reccomended)",
        allowed_values = {"Remove all (not reccomended)", "Remove most (works)", "Remove none (reccomended)"},
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
        maximum_value = 10000
		default_value = 8129,
        order = "aad"
      },
      {
        type = "int-setting",
		name = "bismuth-contain-sulfur",
		setting_type = "startup",
        minimum_value = 1,
        maximum_value = 10000
		default_value = 1871,
        order = "aae"
      },
    })