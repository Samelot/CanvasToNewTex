--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:53687fb4e9e097230de7b7bd00265370:c112744ba03470a88c2a04a4fb843ae4:f25ae127ec27a83d4880792ac27f99f9$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- argentina_534x640
            x=1079,
            y=2,
            width=113,
            height=211,

        },
        {
            -- australia_1596x570
            x=1194,
            y=2,
            width=229,
            height=210,

        },
        {
            -- brazil_532x466
            x=2,
            y=2,
            width=222,
            height=250,

        },
        {
            -- canada_150x0
            x=226,
            y=2,
            width=502,
            height=228,

        },
        {
            -- china_1371x157
            x=730,
            y=2,
            width=347,
            height=225,

        },
    },
    
    sheetContentWidth = 1425,
    sheetContentHeight = 254
}

SheetInfo.frameIndex =
{

    ["argentina"] = 1,
    ["australia"] = 2,
    ["brazil"] = 3,
    ["canada"] = 4,
    ["china"] = 5,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
