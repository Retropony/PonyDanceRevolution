local t = Def.ActorFrame {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(sleep,0.8);
	};

	t[#t+1] = Def.Quad {
		InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#1c1b08");diffusebottomedge,color("#11343d"););
		OnCommand=cmd(diffusealpha,0;sleep,1;linear,0.8;diffusealpha,1);
	};

return t