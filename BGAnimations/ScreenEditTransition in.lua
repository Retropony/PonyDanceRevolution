local t = Def.ActorFrame {};

t[#t+1] = Def.Quad {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#1c1b08");diffusebottomedge,color("#11343d"););
		OnCommand=cmd(diffusealpha,1;linear,0.2;diffusealpha,0);
	};

return t;