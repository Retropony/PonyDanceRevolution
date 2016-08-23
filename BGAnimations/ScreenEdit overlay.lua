local t = Def.ActorFrame {};


t[#t+1] = Def.ActorFrame {
		LoadActor("_editbg") .. {
			InitCommand=cmd(FullScreen;diffusealpha,1;diffuse,GameColor.PonyMane[ ThemePrefs.Get("BestPony") ];);
			OnCommand=cmd(linear,0.2;diffusealpha,0;shadowlength,1);
		};
	};

return t;

