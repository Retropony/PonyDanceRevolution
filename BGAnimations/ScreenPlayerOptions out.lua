local fSleepTime = THEME:GetMetric( Var "LoadingScreen","ScreenOutDelay");

if PREFSMAN:GetPreference( "ShowSongOptions" ) ~= "Maybe_Ask" or GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then
	return Def.ActorFrame {OnCommand=cmd(sleep,0.15+fSleepTime)}
end

local t = Def.ActorFrame {
	LoadActor( THEME:GetPathG("ScreenSelectMusic", "SongOptionsFrame") ) .. {
		InitCommand=cmd(Center;visible,false);
		AskForGoToOptionsCommand=cmd(visible,true);
		GoToOptionsCommand=cmd(visible,true);
	};

	LoadFont( "_celestia redux 33px" ) .. {
		InitCommand=cmd(uppercase,true;settext,THEME:GetString("ScreenPlayerOptions","Press Start For Options");Center;visible,false;strokecolor,Color("Outline"));
		AskForGoToOptionsCommand=cmd(visible,true;diffusealpha,0;linear,0.1;zoomy,1;diffusealpha,1;sleep,1.9;linear,0.1;diffusealpha,0;zoomy,0);
		GoToOptionsCommand=cmd(visible,false);
	};
	LoadFont( "_celestia redux 33px" ) .. {
		InitCommand=cmd(uppercase,true;settext,THEME:GetString("ScreenPlayerOptions","Entering Options");Center;visible,false;strokecolor,Color("Outline"));
		AskForGoToOptionsCommand=cmd(visible,false;linear,0.1;zoomy,1;diffusealpha,1;sleep,1.9;linear,0.1;diffusealpha,0;zoomy,0;);
		GoToOptionsCommand=cmd(visible,true);
	};
};

return t;