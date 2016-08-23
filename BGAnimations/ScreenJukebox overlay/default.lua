local t = Def.ActorFrame{};
local song = GAMESTATE:GetCurrentSong()

t[#t+1] = LoadFont("_celestia redux 33px")..{
		Text=song:GetDisplayArtist();
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y+134;zoom,0.8;diffuse,GameColor.PonyMane['vinyl'];);
		OnCommand=cmd(glowshift;textglowmode,'TextGlowMode_Inner';effectclock,'beat';);
	};
t[#t+1] = LoadFont("_celestia redux 33px")..{
		Text=song:GetDisplayFullTitle();
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y+160;zoom,0.6;diffuse,GameColor.PonyMane['vinyl'];);
		OnCommand=cmd(glowshift;textglowmode,'TextGlowMode_Inner';effectclock,'beat';);
	};

t[#t+1] = LoadActor("pon3")..{
		InitCommand=cmd(CenterX;CenterY;zoom,1;);
		OnCommand=cmd(thump;effectmagnitude,1,1.05,1;effectclock,'beat';);
	};

return t;