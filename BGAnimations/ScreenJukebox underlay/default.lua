local t = Def.ActorFrame {};

	t[#t+1] = Def.Quad {
			InitCommand=cmd(Center;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#000000"));
			OnCommand=cmd(sleep,1.3;smooth,0.4;diffusealpha,0;);
	};
	t[#t+1] = LoadActor("glow") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP-20;diffuse,GameColor.PonyGlow['vinyl']);
		OnCommand=cmd(sleep,0.4;decelerate,0.3;addy,66;);
	};
	t[#t+1] = LoadActor("frame") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP-20;diffuse,GameColor.PonyMane['vinyl']);
		OnCommand=cmd(sleep,0.4;decelerate,0.3;addy,66;);
	};
if GAMESTATE:GetCurrentStyle():GetStyleType() == "StyleType_OnePlayerTwoSides" or GAMESTATE:GetCurrentStyle():GetStyleType() == "StyleType_TwoPlayersSharedSides" or Center1Player() then
	t[#t+1] = LoadActor("slot") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_BOTTOM-30;zoom,0;diffuse,GameColor.PonySkin['vinyl']);
		OnCommand=cmd(sleep,0.6;decelerate,0.6;zoom,0.6;);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("", "/ScreenWithMenuElements header/timer/vinyl")) .. {
		InitCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_BOTTOM-30;zoom,0);
		OnCommand=cmd(rotationz,90;sleep,0.6;decelerate,0.6;zoom,0.42;rotationz,-12;smooth,0.3;zoom,0.4;rotationz,0;);
	};
	t[#t+1] = LoadActor("slot") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X+140;y,SCREEN_BOTTOM-30;zoom,0;diffuse,GameColor.PonySkin['vinyl']);
		OnCommand=cmd(sleep,0.6;decelerate,0.6;zoom,0.6;);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("", "/ScreenWithMenuElements header/timer/vinyl")) .. {
		InitCommand=cmd(x,SCREEN_CENTER_X+140;y,SCREEN_BOTTOM-30;zoom,0);
		OnCommand=cmd(rotationz,-90;sleep,0.6;decelerate,0.6;zoom,0.42;rotationz,12;smooth,0.3;zoom,0.4;rotationz,0;);
	};
else
	t[#t+1] = LoadActor("slot") .. {
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-30;zoom,0;diffuse,GameColor.PonySkin['vinyl']);
		OnCommand=cmd(sleep,0.6;decelerate,0.6;zoom,0.6;);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("", "/ScreenWithMenuElements header/timer/vinyl")) .. {
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-30;zoom,0);
		OnCommand=cmd(rotationz,-90;sleep,0.6;decelerate,0.6;zoom,0.42;rotationz,12;smooth,0.3;zoom,0.4;rotationz,0;);
	};
end ;
	t[#t+1] = LoadActor("glasses")..{
		InitCommand=cmd(CenterX;CenterY;zoom,1;);
	};
	t[#t+1] = LoadActor("_screenstage") .. {
        OnCommand=cmd(sleep,0.3;queuecommand,("Play"));
		PlayCommand=cmd(play;);
	};

	t[#t+1] = Def.Quad {
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#000000"));
			OnCommand=cmd(smooth,0.3;diffusealpha,0;);
	};

return t