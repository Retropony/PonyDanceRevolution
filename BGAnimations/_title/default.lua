local t = Def.ActorFrame {};

-- arrowsIF

if GAMESTATE:GetCurrentGame():GetName() == 'dance' then
	t[#t+1] = LoadActor("dancearrows") .. {
		InitCommand=cmd(zoom,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-8;rotationx,-44;rotationy,32;spin;effectmagnitude,0,0,12;diffusealpha,0);
		OnCommand=cmd(diffusealpha,0.8;zoom,1;);
		OffCommand=cmd(decelerate,0.6;zoom,0.4;diffusealpha,0;);
	};
	elseif GAMESTATE:GetCurrentGame():GetName() == 'pump' then
	t[#t+1] = LoadActor("pumparrows") .. {
		InitCommand=cmd(zoom,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-8;rotationx,-44;rotationy,32;spin;effectmagnitude,0,0,12;diffusealpha,0);
		OnCommand=cmd(diffusealpha,0.8;zoom,1;);
		OffCommand=cmd(decelerate,0.6;zoom,0.4;diffusealpha,0;);
	};
	elseif GAMESTATE:GetCurrentGame():GetName() == 'kb7' then
	t[#t+1] = LoadActor("kb7arrows") .. {
		InitCommand=cmd(zoom,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(diffusealpha,0;decelerate,0.7;diffusealpha,0.8;zoom,0.7;);
		OffCommand=cmd(decelerate,0.6;zoom,0.4;diffusealpha,0;);
	};
	elseif GAMESTATE:GetCurrentGame():GetName() == 'para' then
	t[#t+1] = LoadActor("paraarrows") .. {
		InitCommand=cmd(zoom,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;rotationx,-44;rotationy,32;rotationz,32;);
		OnCommand=cmd(diffusealpha,0;decelerate,0.7;diffusealpha,0.8;zoom,0.7;);
		OffCommand=cmd(decelerate,0.6;zoom,0.4;diffusealpha,0;);
	};
	elseif GAMESTATE:GetCurrentGame():GetName() == 'beat' then
	t[#t+1] = LoadActor("beatarrows") .. {
		InitCommand=cmd(zoom,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(diffusealpha,0;decelerate,0.7;diffusealpha,0.8;zoom,1;);
		OffCommand=cmd(decelerate,0.6;zoom,0.4;diffusealpha,0;);
	};
	elseif GAMESTATE:GetCurrentGame():GetName() == 'techno' then
	t[#t+1] = LoadActor("technoarrows") .. {
		InitCommand=cmd(zoom,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;rotationx,-44;rotationy,32;spin;effectmagnitude,0,0,12;diffusealpha,0);
		OnCommand=cmd(diffusealpha,0.8;zoom,0.8;);
		OffCommand=cmd(decelerate,0.6;zoom,0.4;diffusealpha,0;);
	};
	elseif GAMESTATE:GetCurrentGame():GetName() == 'lights' then
	t[#t+1] = LoadActor("lightsarrows") .. {
		InitCommand=cmd(zoom,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(diffusealpha,0;decelerate,0.7;diffusealpha,0.8;zoom,0.9;glowblink;effectperiod,0.05;effectcolor1,color("1,1,1,0");effectcolor2,color("1,1,1,0.5"));
		OffCommand=cmd(decelerate,0.6;diffusealpha,0;);
	};
end;

-- titleIF

if GAMESTATE:GetCurrentGame():GetName() == 'dance' then
	t[#t+1] = LoadActor("dancetitle") .. {
		InitCommand=cmd(zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(addy,20;diffusealpha,0;zoomy,1.2;zoomx,1.4;decelerate,0.7;diffusealpha,1;zoom,0.8;addy,-20);
		OffCommand=cmd(decelerate,0.6;zoom,1.4;diffusealpha,0;);
	};
	elseif GAMESTATE:GetCurrentGame():GetName() == 'pump' then
	t[#t+1] = LoadActor("pumptitle") .. {
		InitCommand=cmd(zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(addy,20;diffusealpha,0;zoomy,1.2;zoomx,1.4;decelerate,0.7;diffusealpha,1;zoom,0.7;addy,-20);
		OffCommand=cmd(decelerate,0.6;zoom,1.4;diffusealpha,0;);
	};
	elseif GAMESTATE:GetCurrentGame():GetName() == 'kb7' then
	t[#t+1] = LoadActor("kb7title") .. {
		InitCommand=cmd(zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+20;);
		OnCommand=cmd(addy,20;diffusealpha,0;zoomy,1.2;zoomx,1.4;decelerate,0.7;diffusealpha,1;zoomx,0.8;zoomy,0.5;addy,-20);
		OffCommand=cmd(decelerate,0.6;zoom,1.4;diffusealpha,0;);
	};
	elseif GAMESTATE:GetCurrentGame():GetName() == 'para' then
	t[#t+1] = LoadActor("paratitle") .. {
		InitCommand=cmd(zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+20;);
		OnCommand=cmd(addy,20;diffusealpha,0;zoomy,1.2;zoomx,1.4;decelerate,0.7;diffusealpha,1;zoomx,0.8;zoomy,0.8;addy,-20);
		OffCommand=cmd(decelerate,0.6;zoom,1.4;diffusealpha,0;);
	};
	elseif GAMESTATE:GetCurrentGame():GetName() == 'beat' then
	t[#t+1] = LoadActor("beattitle") .. {
		InitCommand=cmd(zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(addy,20;diffusealpha,0;zoomy,1.2;zoomx,1.4;decelerate,0.7;diffusealpha,1;zoom,0.8;addy,-20);
		OffCommand=cmd(decelerate,0.6;zoom,1.4;diffusealpha,0;);
	};
	elseif GAMESTATE:GetCurrentGame():GetName() == 'techno' then
	t[#t+1] = LoadActor("technotitle") .. {
		InitCommand=cmd(zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(addy,20;diffusealpha,0;zoomy,1.2;zoomx,1.4;decelerate,0.7;diffusealpha,1;zoom,0.7;addy,-20);
		OffCommand=cmd(decelerate,0.6;zoom,1.4;diffusealpha,0;);
	};
	elseif GAMESTATE:GetCurrentGame():GetName() == 'lights' then
	t[#t+1] = LoadActor("lightstitle") .. {
		InitCommand=cmd(zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(addy,20;diffusealpha,0;zoomy,1.2;zoomx,1.4;decelerate,0.7;diffusealpha,1;zoom,0.7;addy,-20);
		OffCommand=cmd(decelerate,0.6;zoom,1.4;diffusealpha,0;);
	};
	elseif GAMESTATE:GetCurrentGame():GetName() == 'kickbox' then
	t[#t+1] = LoadActor("kicktitle") .. {
		InitCommand=cmd(zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(addy,20;diffusealpha,0;zoomy,1.2;zoomx,1.4;decelerate,0.7;diffusealpha,1;zoom,0.7;addy,-20);
		OffCommand=cmd(decelerate,0.6;zoom,1.4;diffusealpha,0;);
	};
end;

return t;

