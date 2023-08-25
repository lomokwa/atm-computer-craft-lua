-- Credits to https://www.computercraft.info/forums2/index.php?/topic/25698-easy-automatic-tree-farm/
-- Just learning some lua with ComputerCraft

function checkFuel()
  local fuelLevel = turtle.getFuelLevel()
  if fuelLevel < 20 then
    print("Reabastecendo...")
    turtle.refuel(1)
    print("Turtle Reabastecido.")
  end

function chopTree()
  local success, itemId = turtle.inspect()
  if itemId.name = "minecraft:log" then
    turtle.dig()
    turtle.forward()

    while turtle.detectUp() == true do
      turtle.dig()
      turtle.up()
    end

    while turtle.detectDown() == false do
      turtle.down()
    end

    turtle.back()
    turtle.select(3)
    turtle.place()
    turtle.select(1)
  end
end

local chopping = true
while chopping do
  checkFuel()
  chopTree()
  turtle.suck()
  turtle.suckUp()
end
