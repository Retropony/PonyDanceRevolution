local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_LEFT+160;y,SCREEN_CENTER_Y);
	LoadActor("luna") .. {
		OnCommand=cmd(zoomy,0.4;zoomx,0;smooth,0.3;zoomx,0.5;smooth,0.2;zoomx,0.4;);
		OffCommand=cmd(diffusealpha,1;accelerate,0.5;diffusealpha,0;addx,-40;);
	};
};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,_screen.cx + _screen.w/6;y,SCREEN_CENTER_Y);
	OnCommand=cmd(addx,40;diffusealpha,0;decelerate,0.5;diffusealpha,1;addx,-40;);
	LoadFont("Common Large") .. {
		Text=Screen.String("Caution");
		InitCommand=cmd(y,SCREEN_TOP-172;zoom,1.5;);
		OnCommand=cmd(skewx,-0.125;diffuse,color("#ffd400");strokecolor,color("#b39500"););
		OffCommand=cmd(diffusealpha,1;accelerate,0.5;diffusealpha,0;addx,40;);
	};
	LoadFont("Common Normal") .. {
		Text=Screen.String("CautionText");
		InitCommand=cmd(y,32);
		OnCommand=cmd(strokecolor,color("0,0,0,0.5");shadowlength,1;wrapwidthpixels,SCREEN_WIDTH-340);
		OffCommand=cmd(diffusealpha,1;accelerate,0.5;diffusealpha,0;addx,40;);
	};
};

return t
