----------------------------------------------------------------------------------------------
-- Fix
--- © 2016 Vim Exe @ Jabbit <narthorn@gmail.com>
--
--- Fix is free software, all files licensed under the GPLv3. See LICENSE for details.

-- 31/01/2016 fix missing GetAccountRealmCharacter function
if not GameLib.GetAccountRealmCharacter then
	local char 
	local t = {}
	function t.OnCharacterCreated()
		char = GameLib.GetPlayerUnit()
		if char then Apollo.RemoveEventHandler("CharacterCreated", t) end
	end
	Apollo.RegisterEventHandler("CharacterCreated", "OnCharacterCreated", t) 
	t.OnCharacterCreated()

	function GameLib.GetAccountRealmCharacter()
		return { strCharacter = char and char:GetName() or "Temp Name", strRealm = "Redmoon", strAccount = "never" }
	end
end

Apollo.RegisterAddon({})
