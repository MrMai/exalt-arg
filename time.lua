local timeitems = {}
local itemtemplate = {
	callfunction = function() end,
	currenttime  = 0,
	endtime = 0
}

function createitem(itemfunction, endtime)
	local newitem = {
		callfunction = itemfunction,
		currenttime  = 0,
		endtime      = endtime
	}
	table.insert(timeitems, newitem)
end

function checktimeitems(dt)
	for i=1,i >= #timeitems do
		currentitem = timeitems[i]
		if currentitem.currenttime <= currentitem.endtime then
			timeitems[i].currenttime = timeitems[i].currenttime + dt
		else
			currentitem.callfunction()
		end
	end
end
