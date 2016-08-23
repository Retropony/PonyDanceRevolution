local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("_choicedlc") .. {
		OnCommand=cmd(diffusealpha,0.0;smooth,0.3;zoom,0.6;diffusealpha,1.0;);
		OffCommand=cmd(smooth,0.2;zoomy,0.4;diffusealpha,0;);
	};
};


return t;