local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathG("", "/_arrow")) .. {
		InitCommand=cmd(zoom,0.6;x,SCREEN_CENTER_X-190;y,SCREEN_CENTER_Y+20;rotationz,-90);
		OnCommand=cmd(diffusealpha,0;smooth,1;diffusealpha,1;);
		OffCommand=cmd(decelerate,0.3;addy,10;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathG("", "/_arrow")) .. {
		InitCommand=cmd(zoom,0.6;x,SCREEN_CENTER_X+190;y,SCREEN_CENTER_Y+20;rotationz,90);
		OnCommand=cmd(diffusealpha,0;smooth,1;diffusealpha,1;);
		OffCommand=cmd(decelerate,0.3;addy,10;diffusealpha,0;);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathG("", "/icons/mode")) .. {
		InitCommand=cmd(zoom,0.5;x,SCREEN_LEFT+34;y,SCREEN_TOP-40;);
		OnCommand=cmd(decelerate,0.5;addy,74;);
		OffCommand=cmd(accelerate,0.5;addy,-74;);
	};
};

return t;
