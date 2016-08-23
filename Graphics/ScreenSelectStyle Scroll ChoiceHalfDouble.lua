local t = Def.ActorFrame {};
	
t[#t+1] = LoadActor("_stylebase") .. {
		InitCommand=cmd(diffuse,GameColor.PonyMane[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(spin;effectmagnitude,0,0,42;zoom,0;decelerate,0.5;zoom,1.05;smooth,0.2;zoom,1;);
		OffCommand=cmd(sleep,0.1;smooth,0.4;zoom,1.2;diffusealpha,0);
	};
	
t[#t+1] = LoadActor("_styledbase") .. {
		OnCommand=cmd(rotationz,-90;zoom,0;decelerate,0.5;zoom,1.05;rotationz,12;smooth,0.2;zoom,1;rotationz,0;);
		OffCommand=cmd(sleep,0.1;smooth,0.4;zoom,1.2;rotationz,90;diffusealpha,0;);
	};

t[#t+1] = LoadActor("_stylepumphalfdouble") .. {
		OnCommand=cmd(rotationz,-90;zoom,0;decelerate,0.5;zoom,1.05;rotationz,12;smooth,0.2;zoom,1;rotationz,0;);
		OffCommand=cmd(sleep,0.1;smooth,0.4;zoom,1.2;rotationz,90;diffusealpha,0;);
	};
	
return t