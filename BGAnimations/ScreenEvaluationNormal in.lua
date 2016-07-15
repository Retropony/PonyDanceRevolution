return Def.ActorFrame {
	Def.Quad {
		InitCommand=cmd(Center;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#000000"));
		OnCommand=cmd(diffusealpha,1;linear,0.2;diffusealpha,0;);
	};
};