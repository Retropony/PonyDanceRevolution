return Def.ActorFrame{

	LoadActor("glow") .. {
		InitCommand=cmd(CenterX;CenterY;diffuse,GameColor.PonyGlow[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(addy,18;diffusealpha,0;smooth,0.5;diffusealpha,1);
		OffCommand=cmd(smooth,0.5;diffusealpha,0);
		};
	LoadActor("screen") .. {
		InitCommand=cmd(CenterX;CenterY;diffuse,GameColor.PonySkin[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(addy,18;diffusealpha,0;smooth,0.5;diffusealpha,1);
		OffCommand=cmd(smooth,0.5;diffusealpha,0);
		};

};

