return Def.ActorFrame {
	Def.Quad {
		InitCommand=cmd(Center;zoomto,SCREEN_WIDTH+1,SCREEN_HEIGHT;draworder,4444;);
		OnCommand=cmd(diffuse,color("0,0,0,0");linear,0.5;diffusealpha,1;sleep,0.5;);
	};
};