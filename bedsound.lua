require("natives-1640181023")
util.keep_running()

local function v3(x,y,z)
    return {x=x, y=y, z=z}
end

menu.action(menu.my_root(), "Bed Sound", {"bedsound", "earrape"}, "Plays massive earrape throughout the session.", function()
--{"Bed", "WastedSounds"}
    local pos = v3()
    local Audio_POS = {v3(-73.31681060791,-820.26013183594,326.17517089844),v3(2784.536,5994.213,354.275),v3(-983.292,-2636.995,89.524),v3(1747.518,4814.711,41.666),v3(1625.209,-76.936,166.651),v3(751.179,1245.13,353.832),v3(-1644.193,-1114.271,13.029),v3(462.795,5602.036,781.400),v3(-125.284,6204.561,40.164),v3(2099.765,1766.219,102.698)}

    for i = 1, #Audio_POS do

        AUDIO.PLAY_SOUND_FROM_COORD(-1, "Bed", Audio_POS[i].x, Audio_POS[i].y, Audio_POS[i].z, "WastedSounds", true, 999999999, true)
	    pos.z = 2000.00
	
	    AUDIO.PLAY_SOUND_FROM_COORD(-1, "Bed", Audio_POS[i].x, Audio_POS[i].y, Audio_POS[i].z, "WastedSounds", true, 999999999, true)
		pos.z = -2000.00
	
        AUDIO.PLAY_SOUND_FROM_COORD(-1, "Bed", Audio_POS[i].x, Audio_POS[i].y, Audio_POS[i].z, "WastedSounds", true, 999999999, true)

        for pid = 0, 31 do
            local pos =	NETWORK._NETWORK_GET_PLAYER_COORDS(pid)
            AUDIO.PLAY_SOUND_FROM_COORD(-1, "Bed", pos.x, pos.y, pos.z, "WastedSounds", true, 999999999, true)
        end
    end
end)