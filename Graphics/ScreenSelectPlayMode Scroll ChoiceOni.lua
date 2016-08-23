local t = Def.ActorFrame {};

t[#t+1] = LoadActor("_glowoni") .. {
		OnCommand=cmd(spin;effectmagnitude,0,0,42;zoom,0;decelerate,0.5;zoom,0.9;smooth,0.2;zoom,0.8;);
		OffCommand=cmd(sleep,0.1;smooth,0.4;zoom,1.2;diffusealpha,0);	
	};
	
if ThemePrefs.Get("BestPony") == 'trixie' then
	t[#t+1] = LoadActor("_modeotrixie") .. {
		OnCommand=cmd(rotationz,90;zoom,0;decelerate,0.5;zoom,0.9;rotationz,-12;smooth,0.2;zoom,0.8;rotationz,0;);
		OffCommand=cmd(sleep,0.1;smooth,0.4;zoom,1.2;rotationz,-90;diffusealpha,0);
	};	
elseif ThemePrefs.Get("BestPony") == 'maudpie' then
	t[#t+1] = LoadActor("_modeomaud") .. {
		OnCommand=cmd(rotationz,90;zoom,0;decelerate,0.5;zoom,0.9;rotationz,-12;smooth,0.2;zoom,0.8;rotationz,0;);
		OffCommand=cmd(sleep,0.1;smooth,0.4;zoom,1.2;rotationz,-90;diffusealpha,0);
	};
elseif ThemePrefs.Get("BestPony") == 'derpy' then
	t[#t+1] = LoadActor("_modeoni") .. {
		OnCommand=cmd(rotationz,90+164;zoom,0;decelerate,0.5;zoom,0.9;rotationz,-12+164;smooth,0.2;zoom,0.8;rotationz,164;);
		OffCommand=cmd(sleep,0.1;smooth,0.4;zoom,1.2;rotationz,-90+164;diffusealpha,0);
	};
else
	t[#t+1] = LoadActor("_modeoni") .. {
		OnCommand=cmd(rotationz,90;zoom,0;decelerate,0.5;zoom,0.9;rotationz,-12;smooth,0.2;zoom,0.8;rotationz,0;);
		OffCommand=cmd(sleep,0.1;smooth,0.4;zoom,1.2;rotationz,-90;diffusealpha,0);
		
	};
end;		
	
return t