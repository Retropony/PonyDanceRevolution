local t = Def.ActorFrame {};

local playMode = GAMESTATE:GetPlayMode()

local sStage = ""
sStage = GAMESTATE:GetCurrentStage()

local t = Def.ActorFrame {};

t[#t+1] = Def.Quad {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#000000");diffusealpha,0);
		OnCommand=cmd(smooth,1.5;diffuse,color("#000000");sleep,2;smooth,1;diffuse,color("#570000");sleep,2.5;smooth,1;diffuse,color("#000000"););
};

t[#t+1] = LoadActor("_cm") .. {
		InitCommand=cmd(Center);
		OnCommand=cmd(diffusealpha,0;sleep,3.5;smooth,1;diffusealpha,1;sleep,2.5;smooth,1;diffusealpha,0;);
	};

t[#t+1] = LoadActor("encore") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-160);
		OnCommand=cmd(zoom,1;diffusealpha,0;sleep,4;smooth,1;diffusealpha,1;sleep,2.5;smooth,0.5;diffusealpha,0;zoom,0.6;);
	};

t[#t+1] = LoadActor("stageextra") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-100);
		OnCommand=cmd(zoom,1;diffusealpha,0;sleep,3;smooth,1;diffusealpha,1;smooth,0.5;addy,60;sleep,3.5;smooth,0.5;diffusealpha,0;zoom,0.6;);
	};


t[#t+1] = Def.ActorFrame {
		LoadActor("extraglow") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-100);
		OnCommand=cmd(diffusealpha,0;zoomx,-6;zoomy,-4;sleep,0.2;smooth,0.1;diffusealpha,0.5;smooth,1;zoomx,-1;zoomy,-1;sleep,0.5;smooth,1;diffusealpha,0;);
	};
		LoadActor("extraglow") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-100);
		OnCommand=cmd(diffusealpha,0;zoomx,-6;zoomy,-4;sleep,0.1;smooth,0.1;diffusealpha,0.5;smooth,1;zoomx,-1;zoomy,-1;sleep,0.5;smooth,1;diffusealpha,0;);
	};
		LoadActor("extraglow") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-100);
		OnCommand=cmd(diffusealpha,0;zoomx,-6;zoomy,-4;smooth,0.1;diffusealpha,0.5;smooth,1;zoomx,-1;zoomy,-1;sleep,0.5;smooth,1;diffusealpha,0;);
	};
		LoadActor("extraglow") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-100);
		OnCommand=cmd(diffusealpha,0.5;zoomx,-6;zoomy,-4;smooth,1;zoomx,-1;zoomy,-1;sleep,1.5;smooth,0.5;zoomy,1;decelerate,0.5;zoomx,1;sleep,0.5;smooth,0.5;addy,60;sleep,3.5;smooth,0.5;diffusealpha,0;zoom,0.6;);
	};
};

t[#t+1] = Def.Sprite {
	BeginCommand=function(self)
	sPath = GAMESTATE:GetCurrentSong():GetBannerPath() or  THEME:GetPathG("Common", "fallback banner")
	self:LoadBanner(sPath);
	end;
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+100;cropto,256,80;shadowlength,1;diffusealpha,0);
	OnCommand=cmd(zoom,2.0;sleep,3;smooth,1;zoom,0.75;diffusealpha,1;decelerate,0.5;addx,-140;sleep,1;smooth,0.5;diffusealpha,0;);
	OffCommand=cmd(;);
};

t[#t+1] = Def.ActorFrame {
  InitCommand=cmd(x,SCREEN_CENTER_X+107;y,SCREEN_CENTER_Y+100);
	LoadFont("Common Normal") .. {
		Text=GAMESTATE:GetCurrentSong():GetDisplayFullTitle();
		InitCommand=cmd(strokecolor,Color("Outline");y,-20;maxwidth,300);
		OnCommand=cmd(diffusealpha,0;sleep,3;smooth,1;diffusealpha,1;addy,10;sleep,1.5;smooth,0.5;diffusealpha,0;);
	};
	LoadFont("Common Normal") .. {
		Text=GAMESTATE:GetCurrentSong():GetDisplayArtist();
		InitCommand=cmd(strokecolor,Color("Outline");zoom,0.75);
		OnCommand=cmd(diffusealpha,0;sleep,3;smooth,1;diffusealpha,1;addy,10;sleep,1.5;smooth,0.5;diffusealpha,0;);
	};
};
	
t[#t+1] = LoadActor("_sndextra.ogg") .. {
        OnCommand=cmd(queuecommand,("Play"));
		PlayCommand=cmd(play;);
    };
	
t[#t+1] = Def.Quad {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#fe6b6b");diffusealpha,1);
		OnCommand=cmd(smooth,0.3;diffusealpha,0;);
};		

return t