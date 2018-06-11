-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

display.setStatusBar(display.HiddenStatusBar)

local BFont = require("BitmapFont")
local titleFont = BFont.new("GameTitle.png")
local menuFont = BFont.new("Menu.png")

local centerX= display.contentCenterX
local centerY= display.contentCenterY

local composer = require( "composer" )
composer.gotoScene("menu")

local title = titleFont:newBitmapString(centerX,50,"D-Destiny")
local menuPlay= menuFont:newBitmapString(centerX,centerY*1.2, "Play" )

local menuExit= menuFont:newBitmapString(centerX,centerY*1.6, "Exit" )
