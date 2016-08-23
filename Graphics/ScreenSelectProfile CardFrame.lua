return Def.ActorFrame{

	LoadActor("_profileframe") .. {
		InitCommand=cmd(diffuse,GameColor.PonyGlow[ ThemePrefs.Get("BestPony") ]);
		};

};