return {
  "lukoshkin/highlight-whitespace",
  opts = {
    tws = "\\s\\+$",
    clear_on_bufleave = false,
    palette = {
      -- :echo getcompletion('', 'filetype')
      -- :echo &filetype
      markdown = {
        tws = "RosyBrown",
        ["\\(\\S\\)\\@<=\\s\\(\\.\\|,\\)\\@="] = "CadetBlue3",
        ["\\(\\S\\)\\@<= \\{2,\\}\\(\\S\\)\\@="] = "SkyBlue1",
        ["\\t\\+"] = "plum4",
      },
      terraform = {
        tws = "PaleVioletRed",
        ["\\(\\S\\)\\@<=\\s\\(,\\)\\@="] = "coral1",
        ["\\(#\\|--\\)\\@<= \\{2,\\}\\(\\S\\)\\@="] = "#3B3B3B",
        ["\\t\\+"] = "plum4",
      },
      other = {
        tws = "PaleVioletRed",
        ["\\t\\+$"] = "plum4",
        -- ['\\(\\S\\)\\@<=\\s\\(,\\)\\@='] = 'coral1',
        -- ["\\(\\S\\)\\@<= \\{2,\\}\\(\\S\\)\\@="] = "LightGoldenrod3",
        -- ['\\(#\\|--\\)\\@<= \\{2,\\}\\(\\S\\)\\@='] = '#3B3B3B',
        -- ['\\t\\+'] = 'plum4',
        -- ['\\S\\@<=\\s,\\@='] = 'coral1',
        -- ['\\S\\@<=\\(#\\|--\\)\\@<! \\{2,3\\}\\S\\@=\\(#\\|--\\)\\@!'] = 'LightGoldenrod3',
        -- ['\\(#\\|--\\)\\@<= \\{2,\\}\\S\\@='] = '#3B3B3B',
        -- ['\\S\\@<= \\{3,\\}\\(#\\|--\\)\\@='] = '#3B3B3B',
      },
    },
  },
}
