local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathG("", "/icons/video")) .. {
		InitCommand=cmd(zoom,0.5;x,SCREEN_LEFT+34;y,SCREEN_TOP-40;shadowlength,1);
		OnCommand=cmd(decelerate,0.5;addy,74;);
		OffCommand=cmd(accelerate,0.5;addy,-74;);
	};
};

return t;

