----------------------------------------------------------------------------------------------
-- Fix
--- © 2016 Vim Exe @ Jabbit <narthorn@gmail.com>
--
--- Fix is free software, all files licensed under the GPLv3. See LICENSE for details.

-- 31/01/2016 fix missing GetAccountRealmCharacter function
function GameLib.GetAccountRealmCharacter()
	return {strCharacter = GameLib.GetPlayerCharacterName(), strRealm = GameLib.GetRealmName(), strAccount = ""}
end

Apollo.RegisterAddon({})
