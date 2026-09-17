function build(directory, config, parameters, level, seed)
  local board = root.assetJson("/items/generic/crafting/siliconboard.item")

  for k, v in pairs(board) do
    if config[k] == nil then config[k] = v end
  end

  if board.builder then
    require(board.builder)
    config, parameters = build(directory, config, parameters, level, seed)
  end

  return config, parameters
end
