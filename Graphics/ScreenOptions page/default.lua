return Def.ActorFrame{

	LoadActor("glow") .. {
		InitCommand=cmd(diffuse,GameColor.PonyGlow[ ThemePrefs.Get("BestPony") ]);
		};
	LoadActor("screen") .. {
		InitCommand=cmd(diffuse,GameColor.PonySkin[ ThemePrefs.Get("BestPony") ]);
		};

};