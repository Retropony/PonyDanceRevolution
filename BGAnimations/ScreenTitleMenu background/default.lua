local t = Def.ActorFrame {};

-- GFX

t[#t+1] = Def.ActorFrame {
	
	Def.ActorFrame {
		Def.Quad {
			InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffuse,color("#11343d"););
			OnCommand=cmd(queuecommand,"Pulse");
			PulseCommand=cmd(diffusealpha,0;smooth,20;diffusealpha,1;smooth,20;diffusealpha,0;queuecommand,"Pulse";);
		};
	};
	Def.ActorFrame {
		Def.Quad {
			InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffuse,color("#1c1b08");fadetop,1);
		};
	};
	LoadActor("_bg") .. {
		InitCommand=cmd(fov,90;zoom,1.4;x,SCREEN_LEFT+60;y,SCREEN_CENTER_Y-30;rotationy,38;diffusealpha,1;);
		OnCommand=cmd(spin;effectmagnitude,0,0,-2;);
		OffCommand=cmd(smooth,1;diffusealpha,0);
	};
	LoadActor("_pinkiejump") .. {
		InitCommand=cmd(zoom,2;x,SCREEN_LEFT+120;y,SCREEN_CENTER_Y+60;diffusealpha,1;);
	};
	LoadActor("_happypinkie") .. {
		InitCommand=cmd(zoom,2;x,SCREEN_RIGHT-120;y,SCREEN_CENTER_Y+60;diffusealpha,1;);
	};
};

t[#t+1] = LoadActor( THEME:GetPathB("","_title") ) .. {
		InitCommand=cmd(fov,90;x,SCREEN_LEFT;y,SCREEN_TOP-122;);
	};

t[#t+1] = Def.ActorFrame {
	LoadActor("_sub") .. {
		InitCommand=cmd(zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+20;);
		OnCommand=cmd(diffusealpha,0;addy,20;smooth,0.2;addy,-20;diffusealpha,1;);
		OffCommand=cmd(decelerate,0.3;addy,10;diffusealpha,0;);
	};
	LoadActor("_glowsub") .. {
		InitCommand=cmd(zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+20;);
		OnCommand=cmd(diffusealpha,0;sleep,0.2;queuecommand,"Pulse";);
		OffCommand=cmd(decelerate,0.3;addy,10;diffusealpha,0;);
		PulseCommand=cmd(diffusealpha,1;diffuseshift;effectclock,'beat';effectcolor1,color("1,1,1,0");effectcolor2,color("1,1,1,0.6"));
    };	
};

-- SM infos

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(diffusealpha,0;smooth,0.4;diffusealpha,1;);
	OffCommand=cmd(smooth,0.4;diffusealpha,0;);
		Def.BitmapText { 
			Font= "Common bold",
			Text=tostring(THEME:GetString("ScreenTitleMenu","Songs")),
			InitCommand= function(self) self:shadowlength(1):zoom(0.6):xy(16,24):diffuse(color("#FFFFFF")):horizalign(left) end
		};
		Def.BitmapText { 
			Font= "Common normal",
			Text= tostring(SONGMAN:GetNumSongs()), 
			InitCommand= function(self) self:shadowlength(1):zoom(0.6):xy(66,25):diffuse(color("#FFFFFF")):horizalign(left) end
		};
	};
	
t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(diffusealpha,0;smooth,0.4;diffusealpha,1;);
	OffCommand=cmd(smooth,0.4;diffusealpha,0;);
		Def.BitmapText { 
			Font= "Common bold",
			Text=tostring(THEME:GetString("ScreenTitleMenu","Courses")),
			InitCommand= function(self) self:shadowlength(1):zoom(0.6):xy(16,44):diffuse(color("#FFFFFF")):horizalign(left) end
		};
		Def.BitmapText { 
			Font= "Common normal",
			Text= tostring(SONGMAN:GetNumCourses()), 
			InitCommand= function(self) self:shadowlength(1):zoom(0.6):xy(66,45):diffuse(color("#FFFFFF")):horizalign(left) end
		};
	};
	
t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_RIGHT-16);
	OnCommand=cmd(diffusealpha,0;smooth,0.4;diffusealpha,1;);
	OffCommand=cmd(smooth,0.4;diffusealpha,0;);
		Def.BitmapText { 
			Font= "Common bold",
			Text= string.format("StepMania %s", ProductVersion()), 
			InitCommand= function(self) self:shadowlength(1):zoom(0.75):y(24):diffuse(color("#FFFFFF")):horizalign(right) end
		};
	};	
	
t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_RIGHT-16);
	OnCommand=cmd(diffusealpha,0;smooth,0.4;diffusealpha,1;);
	OffCommand=cmd(smooth,0.4;diffusealpha,0;);
		Def.BitmapText { 
			Font= "Common normal",
			Text= "Theme Beta 1.20", 
			InitCommand= function(self) self:shadowlength(1):zoom(0.6):y(44):diffuse(color("#FFC1FD")):horizalign(right) end
		};
	};

return t;

