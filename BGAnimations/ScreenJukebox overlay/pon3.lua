local t = Def.ActorFrame{};

t[#t+1] = LoadActor("textglow")..{
		InitCommand=cmd(zoom,1;);
		OnCommand=cmd(queuecommand,"Pulse";);
		PulseCommand=cmd(diffusealpha,0;linear,8;diffusealpha,1;linear,8;diffusealpha,0;queuecommand,"Pulse";);
	};
t[#t+1] = LoadActor("dj")..{
		InitCommand=cmd(zoom,1;);
	};

return t;