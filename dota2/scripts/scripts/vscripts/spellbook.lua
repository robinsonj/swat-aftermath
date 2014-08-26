function changeBook(keys)
	local hero = keys.caster
	local heroAbil
	if(currentSpellBook==0) then
		for x = 0, 3, 1 do
			heroAbil=hero:GetAbilityByIndex(x)
			heroAbil:SetHidden(true)
		end
		currentSpellBook = 1
	else
		for x = 0, 3, 1 do
			heroAbil=hero:GetAbilityByIndex(x)
			heroAbil:SetHidden(false)
		end
		currentSpellBook=0
	end
	--heroAbil=hero:GetAbilityByIndex(5)
	--heroAbil:SetHidden(false)
end
function closeBook(keys)
	local hero = keys.caster
	local heroAbil
	for x = 0, 4, 1 do
		heroAbil=hero:GetAbilityByIndex(x)
		heroAbil:SetHidden(false)
	end
	heroAbil=hero:GetAbilityByIndex(5)
	heroAbil:SetHidden(true)
end