local composer = require( "composer" )

local scene = composer.newScene()

local crashSound = audio.loadSound( "Bad_Piggies.mp3" )
local crashChannel = audio.play( crashSound )
audio.dispose(crashChannel)

local function playGame()
    composer.gotoScene( "playground", { time=300, effect="fade" } )
end
local function playGame1()
composer.gotoScene( "playground1", { time=300, effect="fade" } )
end
local function playGame2()
composer.gotoScene( "playground2", { time=300, effect="fade" } )
end

function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    local background = display.newImageRect( sceneGroup, "background.png", 320, 580 )
    background.x = display.contentCenterX
    background.y = display.contentCenterY

    local logobirb = display.newImageRect( sceneGroup, "ROFL.png", 300, 120 )
    logobirb.x = 160
    logobirb.y = 50

    local playButton = display.newText( sceneGroup, "difficulty 1", 160, 150, native.systemFontBold, 20 )
    playButton:addEventListener( "tap", playGame )
    local playButton = display.newText( sceneGroup, "difficulty 2", 160, 210, native.systemFontBold, 20 )
    playButton:addEventListener( "tap", playGame1 )
    local playButton = display.newText( sceneGroup, "difficulty 3", 160, 270, native.systemFontBold, 20 )
    playButton:addEventListener( "tap", playGame2 )

end

function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then

    elseif ( phase == "did" ) then

    end
end

function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then

    elseif ( phase == "did" ) then

    end
end

function scene:destroy( event )

    local sceneGroup = self.view

end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene
