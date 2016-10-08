local newTex = graphics.newTexture( { type="canvas", width=128, height=128 } )

local canvasObj = display.newImageRect(
    newTex.filename,  -- "filename" property required
    newTex.baseDir,   -- "baseDir" property required
    display.contentWidth,
    display.contentHeight
)
canvasObj.x = display.contentCenterX
canvasObj.y = display.contentCenterY

local function addToCanvas()
    local e = 1
    if(e ~= 0) then
        local sheetInfo = require("country")
        local myImageSheet = graphics.newImageSheet( "country.png", sheetInfo:getSheet() )
        local sprite = display.newSprite( myImageSheet , {frames={math.random(5)}} )
        sprite:scale(.5, .5)

        newTex:draw(sprite)
        newTex:invalidate()
    else
        local bg = display.newRect(0, 0, 128, 128) -- to avoid issues, reset coordinates
        bg:setFillColor(1,1,0,1)

        local circ = display.newCircle( 0, 0, 64 )
        circ:setFillColor(1,0,0,1)
        --circ:setFillColor( { type="gradient", color1={0,0.2,1}, color2={0.8,0.8,0.8}, direction="down" } )

        newTex:draw(bg)
        newTex:draw(circ)
        newTex:invalidate()
    end
end

addToCanvas()
-- now i can create a new DisplayObject using the local texture file rendered to newTex
local mask = display.newImageRect(newTex.filename, newTex.baseDir, display.contentWidth, display.contentHeight)
mask.x = display.contentCenterX
mask.y = display.contentCenterY
mask:setStrokeColor(1,0,1,1)
mask.strokeWidth = 2
mask:toFront()
mask.alpha = 1

-- canvasObj (the canvas/container we created our snapshot from) is not needed anymore... destroy?
canvasObj.alpha = 0
