-- All.fuzzy

local public = {}
local internal = {}

public.config = {}

public.setup = function(config)

end

public.telescope = function(opts)
    opts = opts or {}
    return require('telescope.sorters').Sorter:new({
        scoring_function = function(_, prompt, line)
           -- Return Score from 0 to Inf (Zero being the closest to the prompt)
           return 0
        end,

        highlighter = function(_, prompt, display)
           -- Return Score from 0 to Inf (Zero being the closest to the prompt)
           return 0
        end,
    })
end

return public
