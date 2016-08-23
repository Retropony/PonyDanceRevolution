return Def.ActorFrame {
	Def.Quad {
		InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,GameColor.PonyGlow[ ThemePrefs.Get("BestPony") ];);
		OnCommand=cmd(zoomy,0;linear,0.1;zoomy,46;sleep,1.9;linear,0.1;zoomy,0;);
	};
	Def.Quad {
		InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,GameColor.PonySkin[ ThemePrefs.Get("BestPony") ];);
		OnCommand=cmd(zoomy,0;linear,0.1;zoomy,42;sleep,1.9;linear,0.1;zoomy,0;);
	};
	Def.Quad {
		InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,GameColor.PonyMane[ ThemePrefs.Get("BestPony") ];);
		OnCommand=cmd(zoomy,0;linear,0.1;zoomy,42;linear,1.9;addx,SCREEN_WIDTH;);
	};
};