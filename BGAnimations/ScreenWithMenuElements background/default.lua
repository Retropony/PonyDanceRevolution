local t = Def.ActorFrame {};

if GAMESTATE:IsCourseMode() then
t[#t+1] = Def.ActorFrame { LoadActor(THEME:GetPathB("ScreenSelectCourse", "background")); };
elseif GAMESTATE:IsExtraStage(true) then
t[#t+1] = Def.ActorFrame {
	Def.Quad {
		InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffuse,color("#1c080a");diffusebottomedge,color("#3d1114"));
	};
	Def.ActorFrame {
		InitCommand=cmd(fov,90;x,SCREEN_CENTER_X-44;y,SCREEN_CENTER_Y-240;rotationx,-40;rotationz,18;zoom,1.1;);
		LoadActor("_redgrid") .. {
			OnCommand=cmd(texcoordvelocity,0.014,0;);
		};
		LoadActor("_rlightgrid") .. {
			InitCommand=cmd(rotationz,-90;);
			OnCommand=cmd(texcoordvelocity,0,0.5);
		};
		LoadActor("_rlightgrid") .. {
			OnCommand=cmd(texcoordvelocity,0.014,0.36);
		};
	};
};
else
t[#t+1] = Def.ActorFrame {
	Def.Quad {
		InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffuse,color("#1c1b08");diffusebottomedge,color("#11343d"));
	};
	Def.ActorFrame {
		InitCommand=cmd(fov,90;x,SCREEN_CENTER_X-44;y,SCREEN_CENTER_Y-240;rotationx,-40;rotationz,18;zoom,1.1;);
		LoadActor("_grid") .. {
			InitCommand=cmd(diffuse,GameColor.PonySkin[ ThemePrefs.Get("BestPony") ];);
			OnCommand=cmd(diffusealpha,0;texcoordvelocity,0.014,0;smooth,1;diffusealpha,1;);
		};
		LoadActor("_lightgrid") .. {
			InitCommand=cmd(rotationz,-90;diffuse,GameColor.PonySkin[ ThemePrefs.Get("BestPony") ];);
			OnCommand=cmd(texcoordvelocity,0,0.5);
		};
		LoadActor("_lightgrid") .. {
			InitCommand=cmd(diffuse,GameColor.PonySkin[ ThemePrefs.Get("BestPony") ];);
			OnCommand=cmd(texcoordvelocity,0.014,0.36);
		};
	};
};
end;

return t;

