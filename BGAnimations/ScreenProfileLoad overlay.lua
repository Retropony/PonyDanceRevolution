local x = Def.ActorFrame{
	LoadActor(THEME:GetPathG("", "_cm"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-25;);
		OnCommand=cmd(diffusealpha,0;smooth,0.2;diffusealpha,0.8;sleep,0.4);
		OffCommand=cmd(smooth,0.3;diffusealpha,0;);
	};
	LoadFont("_celestia redux 33px")..{
		InitCommand=cmd(uppercase,true;settext,ScreenString("Loading Profiles");x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+50;);
		OnCommand=cmd(diffusealpha,0;smooth,0.2;diffusealpha,0.8;sleep,0.4);
		OffCommand=cmd(smooth,0.3;diffusealpha,0;);
	};
};

x[#x+1] = Def.Actor {
	BeginCommand=function(self)
		if SCREENMAN:GetTopScreen():HaveProfileToLoad() then self:sleep(1); end;
		self:queuecommand("Load");
	end;
	LoadCommand=function() SCREENMAN:GetTopScreen():Continue(); end;
};

return x;