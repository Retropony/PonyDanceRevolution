local t = Def.ActorFrame {};

	t[#t+1] = LoadActor("glow") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+18;zoom,0.5;diffuse,GameColor.PonyGlow[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(smooth,1;addy,-35);
		OffCommand=cmd(smooth,1;addy,70);
	};
	t[#t+1] = LoadActor("footer") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+18;zoom,0.5;diffuse,GameColor.PonyMane[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(smooth,1;addy,-35);
		OffCommand=cmd(smooth,1;addy,70);
	};

return t