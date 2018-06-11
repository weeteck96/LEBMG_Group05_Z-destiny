-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local composer = require( "composer" )

local scene = composer.newScene()

local physics = require "physics"
physics.start()

local background = display.newImageRect( "Fback.png", 480, 320 )
background.x = 240
background.y = 160

local background2 = display.newImageRect( "Ffront.png", 480, 320 )
background2.x = 240
background2.y = 160

background2.enterFrame = scrollbg
Runtime:addEventListener("enterFrame", background2)

local counter = 60
local timeDisplay = display.newText(counter,0,0,native.systemFrontBold,64)
timeDisplay.x = display.contentCenterX
timeDisplay.y = 50

local hero

local enemy = display.newImage("enemy.png")
enemy.x = 580
enemy.y = 50
enemy.speed = math.random(2,6)
enemy.initY = enemy.y
enemy.amp = math.random(5,15)
enemy.angle = math.random(0,25)
physics.addBody(enemy, "static", {density=0.1, bounce=0.1, friction=.2, radius=12})

local enemy1 = display.newImage("enemy.png")
enemy1.x = 600
enemy1.y = 230
enemy1.speed = math.random(2,6)
enemy1.initY = enemy1.y
enemy1.amp = math.random(5,15)
enemy1.angle = math.random(0,25)
physics.addBody(enemy1, "static", {density=0.1, bounce=0.1, friction=.2, radius=12})

local enemy2 = display.newImage("enemy.png")
enemy2.x = 615
enemy2.y = 280
enemy2.speed = math.random(2,6)
enemy2.initY = enemy2.y
enemy2.amp = math.random(5,15)
enemy2.angle = math.random(0,25)
physics.addBody(enemy2, "static", {density=0.1, bounce=0.1, friction=.2, radius=12})

local enemy3 = display.newImage("boundery.png" )
enemy3.x = display.contentCenterX
enemy3.y = 400
physics.addBody(enemy3, "static" )


function moveEnemy(self,event)
	if self.x < -150 then
		self.x = 600
		self.y = math.random(0,320)
		self.speed = math.random(2,5.5)
		self.amp = math.random(5,15)
		self.angle = math.random(0,25)

	else
		self.x = self.x - self.speed
		self.angle = self.angle + 0.1
		self.y = self.amp * math.sin(self.angle)+self.initY
	end
end

	enemy.enterFrame = moveEnemy
	Runtime:addEventListener("enterFrame", enemy)

	enemy1.enterFrame = moveEnemy
	Runtime:addEventListener("enterFrame", enemy1)

	enemy2.enterFrame = moveEnemy
	Runtime:addEventListener("enterFrame", enemy2)

	Runtime:addEventListener("enterFrame", enemy3)


		function activateHero(self,event)
	self:applyForce(0, -1.5, self.x, self.y)
end

function touchScreen(event)
	if event.phase == "began" then
		hero.enterFrame = activateHero
		Runtime:addEventListener("enterFrame", hero)
	end

	if event.phase == "ended" then
		Runtime:removeEventListener("enterFrame", hero)
	end

end

Runtime:addEventListener("touch", touchScreen)

function onCollision(event)
	if event.phase == "began" then
			--composer.removeScene("menu")
			--composer.removeScene("scene1")
		composer.gotoScene( "scene2" )
	end

end
-- "scene:create()"
function scene:create( event )

    local sceneGroup = self.view

	hero = display.newImage("Hero.png")
	hero.x = 50
	hero.y = 220
	physics.addBody(hero, "dynamic", {density=0.1, bounce=0.1, friction=.2, radius=12})


end


Runtime:addEventListener("collision", onCollision)

    local function updateTimer(event)
         counter = counter - 1
         timeDisplay.text = counter
         if counter == 0 then
				composer.removeScene("scene1")
				--enemy3 = false
              composer.gotoScene("win")
        end
    end

    timer.performWithDelay(1000, updateTimer, 60)

--"scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then

        print("Now we are in scene2.lua!")
    elseif ( phase == "did" ) then
    end
end


-- "scene:hide()"
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then

    elseif ( phase == "did" ) then

    end
end


-- "scene:destroy()"
function scene:destroy( event )

    local sceneGroup = self.view

end

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene
