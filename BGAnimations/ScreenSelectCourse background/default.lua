local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	Def.Quad {
		InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffuse,color("#003031");diffusebottomedge,color("#154e4f"));
	};
	Def.ActorFrame {
		InitCommand=cmd(fov,90;x,SCREEN_CENTER_X-44;y,SCREEN_CENTER_Y-240;rotationx,-40;rotationz,18;zoom,1.1;);
		LoadActor("_bluegrid") .. {
			OnCommand=cmd(texcoordvelocity,0.014,0;);
		};
		LoadActor("_blightgrid") .. {
			InitCommand=cmd(rotationz,-90;);
			OnCommand=cmd(texcoordvelocity,0,0.5);
		};
		LoadActor("_blightgrid") .. {
			OnCommand=cmd(texcoordvelocity,0.014,0.36);
		};
	};
};

return t;

