local t = Def.ActorFrame{};

if not GAMESTATE:IsCourseMode() then return t; end;


t[#t+1] = Def.Quad {
			InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;Center;diffuse,GameColor.PonySkin[ ThemePrefs.Get("BestPony") ]);
			StartCommand=cmd(diffusealpha,0;linear,0.5;diffusealpha,1;);
			FinishCommand=cmd(linear,0.5;diffusealpha,0;);
		};

return t;