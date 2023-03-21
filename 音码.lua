macro="yinma"
kaiguan="rctrl"
state=0
function OnEvent(event, arg)
	while (event == "PROFILE_ACTIVATED") do
			if(IsModifierPressed(kaiguan) == true)and(state==0) then
				state=1
				PlayMacro(macro)
				Sleep(500)
				while(1)do
					if(IsModifierPressed(kaiguan) == false)then
						break
					end
				end
			elseif(IsModifierPressed(kaiguan) == true)and(state==1) then
				state=0
				AbortMacro()
				while(1)do
					if(IsModifierPressed(kaiguan) == false)then
						break
					end
				end
			end
	end
end