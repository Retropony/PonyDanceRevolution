local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathG("", "/_arrow")) .. {
		InitCommand=cmd(zoom,0.6;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;);
		OnCommand=cmd(diffusealpha,0;addy,-20;smooth,0.2;addy,20;diffusealpha,1;);
		OffCommand=cmd(decelerate,0.3;addy,-10;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathG("", "/_arrow")) .. {
		InitCommand=cmd(zoom,0.6;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+200;rotationz,180);
		OnCommand=cmd(diffusealpha,0;addy,20;smooth,0.2;addy,-20;diffusealpha,1;);
		OffCommand=cmd(decelerate,0.3;addy,10;diffusealpha,0;);
	};
};		

return t;

