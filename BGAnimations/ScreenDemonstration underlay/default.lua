local t = Def.ActorFrame {};

	t[#t+1] = Def.Quad {
			InitCommand=cmd(Center;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#000000"));
			OnCommand=cmd(sleep,0.3;smooth,1.2;diffusealpha,0;);
	};
	t[#t+1] = LoadActor("glow") .. {
		InitCommand=cmd(CenterX;y,SCREEN_TOP-20;diffuse,GameColor.PonyGlow[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(sleep,0.4;decelerate,0.3;addy,66;);
	};
	t[#t+1] = LoadActor("frame") .. {
		InitCommand=cmd(CenterX;y,SCREEN_TOP-20;diffuse,GameColor.PonyMane[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(sleep,0.4;decelerate,0.3;addy,66;);
	};
if GAMESTATE:GetCurrentStyle():GetStyleType() == "StyleType_OnePlayerTwoSides" or GAMESTATE:GetCurrentStyle():GetStyleType() == "StyleType_TwoPlayersSharedSides" or Center1Player() then
	t[#t+1] = LoadActor("slot") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_BOTTOM-30;zoom,0;diffuse,GameColor.PonySkin[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(sleep,0.6;decelerate,0.6;zoom,0.6;);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("", "_cm")) .. {
		InitCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_BOTTOM-30;zoom,0);
		OnCommand=cmd(rotationz,90;sleep,0.6;decelerate,0.6;zoom,0.42;rotationz,-12;smooth,0.3;zoom,0.4;rotationz,0;);
	};
	t[#t+1] = LoadActor("slot") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X+140;y,SCREEN_BOTTOM-30;zoom,0;diffuse,GameColor.PonySkin[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(sleep,0.6;decelerate,0.6;zoom,0.6;);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("", "_cm")) .. {
		InitCommand=cmd(x,SCREEN_CENTER_X+140;y,SCREEN_BOTTOM-30;zoom,0);
		OnCommand=cmd(rotationz,-90;sleep,0.6;decelerate,0.6;zoom,0.42;rotationz,12;smooth,0.3;zoom,0.4;rotationz,0;);
	};
else
	t[#t+1] = LoadActor("slot") .. {
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-30;zoom,0;diffuse,GameColor.PonySkin[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(sleep,0.6;decelerate,0.6;zoom,0.6;);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("", "_cm")) .. {
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-30;zoom,0);
		OnCommand=cmd(rotationz,-90;sleep,0.6;decelerate,0.6;zoom,0.42;rotationz,12;smooth,0.3;zoom,0.4;rotationz,0;);
	};
end ;
	
	t[#t+1] = LoadActor("_screenstage") .. {
        OnCommand=cmd(sleep,0.3;queuecommand,("Play"));
		PlayCommand=cmd(play;);
	};

return t