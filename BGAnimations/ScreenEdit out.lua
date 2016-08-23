local t = Def.ActorFrame {};


t[#t+1] = Def.ActorFrame {
		LoadActor("_editbg") .. {
			InitCommand=cmd(FullScreen;diffusealpha,0;diffuse,GameColor.PonyMane[ ThemePrefs.Get("BestPony") ];draworder,200;);
			OnCommand=cmd(linear,0.2;diffusealpha,1;);
		};
	};

return t;

