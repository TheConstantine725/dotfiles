return 
{
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
	    require('lualine').setup{
		    options = { theme = 'tokyonight',
			section_separators = '',
			component_separators =''
			},
		    sections = {lualine_a = {'mode'},
		    		lualine_b = {'branch'},
				lualine_c = {'filename'},
				lualine_x = {'encoding','fileformat','filetype'},
				lualine_y = {'progress'},
				lualine_z = {'location'}
			}
	}
  end
}
