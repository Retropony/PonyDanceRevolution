local t = Def.ActorFrame {};


t[#t+1] = Def.ActorFrame {
		LoadActor("_editbg") .. {
			OnCommand=cmd(FullScreen;diffusealpha,1;diffuse,GameColor.PonyMane[ ThemePrefs.Get("BestPony") ];);
		};
	};

return t;

