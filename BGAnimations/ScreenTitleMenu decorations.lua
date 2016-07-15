InitUserPrefs();

local t = Def.ActorFrame {
	OnCommand=function(self)
		if not FILEMAN:DoesFileExist("Save/ThemePrefs.ini") then
			Trace("ThemePrefs doesn't exist; creating file")
			ThemePrefs.ForceSave()
		end

		ThemePrefs.Save()
	end;
};

t[#t+1] = StandardDecorationFromFileOptional("VersionInfo","VersionInfo");

return t