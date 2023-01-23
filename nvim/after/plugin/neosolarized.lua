n = require('neosolarized').setup({
   comment_italics = true,
   background_set = false,
})

-- Sometimes I don't like them red :>
n.Group.new('Special', n.colors.base0)

n.Color.new('black', '#000000')
n.Group.new('CursorLineNr', n.colors.yellow, n.colors.black, n.styles.NONE, n.colors.base1)
n.Group.new('Visual', n.colors.none, n.colors.base03, n.styles.reverse)
