local util = require("data-util");
-- Enable prod modules for all plate and ore recipes

for _, recipe in pairs(util.me.recipes) do
  if data.raw.recipe[recipe] then
      data.raw.recipe[recipe].allow_productivity = true
  end
end
