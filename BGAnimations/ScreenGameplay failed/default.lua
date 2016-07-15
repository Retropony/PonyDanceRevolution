local t = Def.ActorFrame {};

t[#t+1] = Def.Quad {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;);
		OnCommand=cmd(blend,Blend.Multiply;smooth,1;diffusealpha,0.4;diffuse,color("#29264A"));
};

t[#t+1] = Def.Quad {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#000000");diffusealpha,0);
		OnCommand=cmd(sleep,1.8;smooth,4;diffusealpha,1;);
};

-- Failed letters Animation
t[#t+1] = LoadActor("1") .. {
		InitCommand=cmd(horizalign,center;x,SCREEN_CENTER_X-198;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(diffusealpha,0;rotationz,12;zoom,2;sleep,0.8;smooth,0.4;zoom,0.8;rotationz,0;diffusealpha,1;linear,2.7;zoom,0.7;rotationz,-2;smooth,0.05;zoomy,0.8;smooth,0.3;rotationz,-4;diffusealpha,0;zoomy,0;addy,30;);
	};
t[#t+1] = LoadActor("2") .. {
		InitCommand=cmd(horizalign,center;x,SCREEN_CENTER_X-121;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(diffusealpha,0;rotationz,-12;zoom,2;sleep,1.2;smooth,0.4;zoom,0.8;rotationz,0;diffusealpha,1;linear,2.4;zoom,0.7;rotationz,6;smooth,0.05;zoomy,0.8;smooth,0.3;rotationz,12;diffusealpha,0;zoomy,0;addy,30;);
	};
t[#t+1] = LoadActor("3") .. {
		InitCommand=cmd(horizalign,center;x,SCREEN_CENTER_X-44;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(diffusealpha,0;rotationz,12;zoom,2;sleep,1;smooth,0.4;zoom,0.8;rotationz,0;diffusealpha,1;linear,2.8;zoom,0.7;rotationz,-5;smooth,0.05;zoomy,0.8;smooth,0.3;rotationz,-10;diffusealpha,0;zoomy,0;addy,30;);
	};
t[#t+1] = LoadActor("4") .. {
		InitCommand=cmd(horizalign,center;x,SCREEN_CENTER_X+33;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(diffusealpha,0;rotationz,-12;zoom,2;sleep,1.3;smooth,0.4;zoom,0.8;rotationz,0;diffusealpha,1;linear,2.4;zoom,0.7;rotationz,1;smooth,0.05;zoomy,0.8;smooth,0.3;rotationz,2;diffusealpha,0;zoomy,0;addy,30;);
	};
t[#t+1] = LoadActor("5") .. {
		InitCommand=cmd(horizalign,center;x,SCREEN_CENTER_X+110;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(diffusealpha,0;rotationz,12;zoom,2;sleep,0.9;smooth,0.4;zoom,0.8;rotationz,0;diffusealpha,1;linear,2.5;zoom,0.7;rotationz,-8;smooth,0.05;zoomy,0.8;smooth,0.3;rotationz,-16;diffusealpha,0;zoomy,0;addy,30;);
	};
t[#t+1] = LoadActor("6") .. {
		InitCommand=cmd(horizalign,center;x,SCREEN_CENTER_X+187;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(diffusealpha,0;rotationz,-12;zoom,2;sleep,1.1;smooth,0.4;zoom,0.8;rotationz,0;diffusealpha,1;linear,2.8;zoom,0.7;rotationz,4;smooth,0.05;zoomy,0.8;smooth,0.3;rotationz,8;diffusealpha,0;zoomy,0;addy,30;);
	};
	
-- Opening	
t[#t+1] = Def.Quad {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffusealpha,0);
		OnCommand=cmd(diffuse,color("#EC2D2D");smooth,0.3;diffusealpha,0);
};

t[#t+1] = LoadActor("_shutdown") .. {
        OnCommand=cmd(queuecommand,("Play"));
		PlayCommand=cmd(play;);
};

return t