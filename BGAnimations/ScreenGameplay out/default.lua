local t = Def.ActorFrame {};

t[#t+1] = Def.Quad {
		InitCommand=cmd(Center;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#000000"));
		OnCommand=cmd(diffusealpha,0;;linear,1;diffusealpha,1;sleep,0.5;);
	};

t[#t+1] = LoadActor("_glowcleared") .. {
		InitCommand=cmd(horizalign,center;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(zoom,0.7;diffusealpha,0;sleep,0.4;smooth,1.2;diffusealpha,1;sleep,1;smooth,0.2;diffusealpha,0;);
	};
t[#t+1] = LoadActor("_clearedsign") .. {
		InitCommand=cmd(horizalign,center;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(zoomx,0.7;zoomy,0;smooth,0.3;zoomy,0.8;smooth,0.1;zoomy,0.7;sleep,2.2;smooth,0.2;diffusealpha,0;);
	};
t[#t+1] = LoadActor("command");

return t