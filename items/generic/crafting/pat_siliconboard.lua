function build(directory, config, parameters)
	local board = root.assetJson("/items/generic/crafting/siliconboard.item")
	
	for k,v in pairs(board) do
		config[k] = config[k] or v
	end
	
	return config, parameters
end