local jl = Var "JudgmentLine";

return Def.ActorFrame {
	--LoadActor("_frame") .. {
		--InitCommand=cmd(zoomy,1.00;addy,7;diffusealpha,0.4);
--	};
	LoadFont("Common bold") .. {
		InitCommand=cmd(visible,GAMESTATE:IsHumanPlayer(PLAYER_1);horizalign,left;zoom,1.0;settext,string.upper(JudgmentLineToLocalizedString(jl));diffuse,JudgmentLineToColor(jl);diffusebottomedge,color("#FFFFFF");x,SCREEN_LEFT-275;y,-2);
		OnCommand=cmd(diffusealpha,0;zoomx,1.2;sleep,0.2;smooth,0.2;zoom,1.0;diffusealpha,1.0;);
		OffCommand=cmd(smooth,0.2;diffusealpha,0;);
	};
	
		LoadFont("Common bold") .. {
		InitCommand=cmd(visible,GAMESTATE:IsHumanPlayer(PLAYER_2);horizalign,right;zoom,1.0;settext,string.upper(JudgmentLineToLocalizedString(jl));diffuse,JudgmentLineToColor(jl);diffusebottomedge,color("#FFFFFF");x,SCREEN_LEFT+275;y,-2);
		OnCommand=cmd(diffusealpha,0;zoomx,1.2;sleep,0.2;smooth,0.2;zoom,1.0;diffusealpha,1.0;);
		OffCommand=cmd(smooth,0.2;diffusealpha,0;);
	};
	
};