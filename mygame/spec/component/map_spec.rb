#
# dr_collider is a module for you sprite.
# It need that your sprite have a map attirbutte.
#
# This spec list those map requirement.
# Replace Map par your map if you want to test this
# part of your game
#
# it can't realy done by a module
# it's more an adapter implementation
#
focus_spec :tile_map do
  #
  before do |args, assert|
    @map      = Map.new args
  end

  # TODO: list map example
  # for dr_tiled or other map type
  #
  it "find a tile x y in the tile system" do |args, assert|
    x = 0
    y = 0
    # TODO: need a better vision of the map
    expect(@map.tile_at(0, 0).id).to eq(1)
    expect(@map.tile_at(1, 1).id).to eq(0)
  end

  it "puts the sprite map is done by the sprite" do |args, assert|
    x = 0
    y = 0
    # TODO: need a better vision of the map
    expect(@map.tile_at(0, 0).id).to eq(1)
    expect(@map.tile_at(1, 1).id).to eq(0)
    #
    sprite = MySprite.new args
    map    = Map.new args
    sprite.set_colision_map map

    sprite.puts_map
  end
end
