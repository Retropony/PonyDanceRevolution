local t = Def.ActorFrame {};

t[#t+1] = LoadFont("_celestia redux 33px") .. {
		Text=Screen.String("Loading");
		InitCommand=cmd(Center);
		OnCommand=cmd(diffusealpha,0;decelerate,0.5;diffusealpha,1);
		OffCommand=cmd(accelerate,0.5;diffusealpha,0);
	};

return t;