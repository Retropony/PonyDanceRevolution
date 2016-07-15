local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	Def.Quad {
		InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffuse,color("#1c080a");diffusebottomedge,color("#3d1114"));
	};
	Def.ActorFrame {
		InitCommand=cmd(fov,90;x,SCREEN_CENTER_X-44;y,SCREEN_CENTER_Y-240;rotationx,-40;rotationz,18;zoom,1.1;);
		LoadActor("_redgrid") .. {
			InitCommand=cmd(diffusealpha,1;);
			OnCommand=cmd(smooth,8;diffusealpha,0;);
		};
		LoadActor("_gameover") .. {
			InitCommand=cmd(diffusealpha,0;zoom,0.75);
			OnCommand=cmd(addx,104;addy,240;smooth,2;diffusealpha,1;);
		};
	};
};

t[#t+1] = Def.Quad {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffusealpha,0);
		OnCommand=cmd(diffuse,color("#EC2D2D");smooth,0.3;diffusealpha,0);
};

return t;

