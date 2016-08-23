local fSleepTime = THEME:GetMetric( Var "LoadingScreen","ScreenOutDelay");

if GAMESTATE:IsExtraStage(true) or GAMESTATE:IsExtraStage2(true) then
	return Def.ActorFrame {OnCommand=cmd(sleep,0.15+fSleepTime)}
end

local t = Def.ActorFrame {
	LoadActor( THEME:GetPathG("ScreenSelectMusic", "SongOptionsFrame") ) .. {
		InitCommand=cmd(Center;visible,true);
		OnCommand=cmd()
	};

	LoadFont( "_celestia redux 33px" ) .. {
		InitCommand=cmd(uppercase,true;settext,THEME:GetString("ScreenSelectMusic","Press Start For Options");Center;visible,false;strokecolor,Color("Outline"));
		ShowPressStartForOptionsCommand=cmd(visible,true;diffusealpha,0;linear,0.1;zoomy,1;diffusealpha,1;sleep,1.9;linear,0.1;diffusealpha,0;zoomy,0);
		ShowEnteringOptionsCommand=cmd(visible,false);
	};
	LoadFont( "_celestia redux 33px" ) .. {
		InitCommand=cmd(uppercase,true;settext,THEME:GetString("ScreenSelectMusic","Entering Options");Center;visible,false;strokecolor,Color("Outline"));
		ShowPressStartForOptionsCommand=cmd(visible,false;diffusealpha,0;linear,0.1;zoomy,1;diffusealpha,1;sleep,1.9;linear,0.1;diffusealpha,0;zoomy,0);
		ShowEnteringOptionsCommand=cmd(visible,true);
	};
};

return t;