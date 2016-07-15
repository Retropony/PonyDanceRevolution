local t = Def.ActorFrame{};

-- todo: add event mode indicators and such
if GAMESTATE:IsEventMode() then
	t[#t+1] = LoadActor(THEME:GetPathG("", "_choiceevent")) .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+140);
		OnCommand=cmd(zoomx,1.2;zoomy,0;decelerate,0.3;zoomx,0.5;zoomy,0.7;smooth,0.1;zoomx,0.6;zoomy,0.6;);
		OffCommand=cmd(smooth,0.2;zoomy,0.4;diffusealpha,0;);
	};
else
	t[#t+1] = LoadActor(THEME:GetPathG("", "_choicestart")) .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+140);
		OnCommand=cmd(zoomx,1.2;zoomy,0;decelerate,0.3;zoomx,0.5;zoomy,0.7;smooth,0.1;zoomx,0.6;zoomy,0.6;);
		OffCommand=cmd(smooth,0.2;zoomy,0.4;diffusealpha,0;);
	};
end;

return t;