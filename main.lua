require 'time'

function love.load()
	determination = love.graphics.newFont('DTM-Mono.otf',28)
	love.window.setMode(100, 20, {highdpi = true})
	love.graphics.setFont(determination)
end

function love.update(dt)
	time.checktimeitems(dt)
end

function love.draw()
	love.graphics.print('snow poff...', 0, 0)
end
