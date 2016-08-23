local t = Def.ActorFrame {};

t[#t+1] = LoadActor("titleglow") .. {
		InitCommand=cmd(diffuse,GameColor.PonyGlow[ ThemePrefs.Get("BestPony") ]);
		};

if ThemePrefs.Get("BestPony") == 'dash' then
	t[#t+1] = LoadActor("_rdhead") .. {
		InitCommand=cmd();
		};
else
	t[#t+1] = LoadActor("_title") .. {
		InitCommand=cmd(diffuse,GameColor.PonyMane[ ThemePrefs.Get("BestPony") ]);
		};
end;	
	
return t