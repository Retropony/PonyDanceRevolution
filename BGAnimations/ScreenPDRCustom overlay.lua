local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathG("", "/icons/pdr")) .. {
		InitCommand=cmd(zoom,0.3;x,SCREEN_LEFT+34;y,SCREEN_TOP-40;);
		OnCommand=cmd(decelerate,0.5;addy,74;sleep,0.5;);
		OffCommand=cmd(accelerate,0.5;addy,-74;);
	};
};

return t;

