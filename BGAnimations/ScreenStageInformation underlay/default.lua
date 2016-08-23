local t = Def.ActorFrame {};

t[#t+1] = Def.Quad {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#000000");diffusealpha,0);
		OnCommand=cmd(smooth,1;diffusealpha,0.5;);
};

if GAMESTATE:GetPlayMode() == 'PlayMode_Oni' then
	t[#t+1] = LoadActor("_onimode") .. {
	};
	elseif GAMESTATE:GetPlayMode() == 'PlayMode_Endless' then
	t[#t+1] = LoadActor("_endlessmode") .. {
	};
	elseif GAMESTATE:GetPlayMode() == 'PlayMode_Nonstop' then
	t[#t+1] = LoadActor("_partymode") .. {
	};
	elseif GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then
	t[#t+1] = LoadActor("_ravemode") .. {
	};
	elseif GAMESTATE:IsExtraStage2(true) then
	t[#t+1] = LoadActor("_encoreextra") .. {
	};
	elseif GAMESTATE:IsExtraStage(true) then
	t[#t+1] = LoadActor("_extra") .. {
	};
	else
	t[#t+1] = LoadActor("_regular") .. {
	};
end;

return t
