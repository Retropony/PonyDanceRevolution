local t = Def.ActorFrame {};

t[#t+1] = LoadActor("headerglow") .. {
		InitCommand=cmd(diffuse,GameColor.PonyGlow[ ThemePrefs.Get("BestPony") ]);
		};

if ThemePrefs.Get("BestPony") == 'dash' then
	t[#t+1] = LoadActor("_rdtime") .. {
		InitCommand=cmd();
		};
else
	t[#t+1] = LoadActor("_timer") .. {
		InitCommand=cmd(diffuse,GameColor.PonyMane[ ThemePrefs.Get("BestPony") ]);
		};

end;	
	
return t