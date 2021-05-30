local oldUpdate = update

local soyTimer = math.random(120, 300)

function update(dt)
	oldUpdate(dt)
	
	soyTimer = math.max(0, soyTimer - dt)
	
	if soyTimer == 0 then
		soyTimer = math.random(120, 300)
		
		if math.random(1, 500) == 1 then
			player.radioMessage({
				unique = false,
				messageId = "pat_soybosses",
				senderName = "Koll_U",
				portraitImage = "/pat/soybosses/soy.png",
				portraitFrames = 1,
				text = "О, либералов так порвало, что они стали боссами"
			})
		end
	end
end