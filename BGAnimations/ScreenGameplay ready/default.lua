local t = Def.ActorFrame {};

t[#t+1] = LoadActor("glow") .. {
	InitCommand=cmd(Center;draworder,104;diffusealpha,0;);
	StartTransitioningCommand=cmd(sleep,0.3;linear,0.3;diffusealpha,1;linear,0.3;diffusealpha,0;);
};
t[#t+1] = LoadActor("1") .. {
	InitCommand=cmd(Center;draworder,105;diffusealpha,1;);
	StartTransitioningCommand=cmd(zoomx,1;zoomy,0;bounceend,0.1;zoomy,1;sleep,0.8;accelerate,0.3;zoomx,0;zoomy,0;diffusealpha,0;);
};
t[#t+1] = LoadActor("2") .. {
	InitCommand=cmd(Center;draworder,105;diffusealpha,1;);
	StartTransitioningCommand=cmd(zoomx,1;zoomy,0;sleep,0.05;bounceend,0.1;zoomy,1;sleep,0.85;accelerate,0.3;zoomx,0;zoomy,0;diffusealpha,0;);
};
t[#t+1] = LoadActor("3") .. {
	InitCommand=cmd(Center;draworder,105;diffusealpha,1;);
	StartTransitioningCommand=cmd(zoomx,1;zoomy,0;sleep,0.1;bounceend,0.1;zoomy,1;sleep,0.9;accelerate,0.3;zoomx,0;zoomy,0;diffusealpha,0;);
};
t[#t+1] = LoadActor("4") .. {
	InitCommand=cmd(Center;draworder,105;diffusealpha,1;);
	StartTransitioningCommand=cmd(zoomx,1;zoomy,0;sleep,0.15;bounceend,0.1;zoomy,1;sleep,0.75;accelerate,0.3;zoomx,0;zoomy,0;diffusealpha,0;);
};
t[#t+1] = LoadActor("5") .. {
	InitCommand=cmd(Center;draworder,105;diffusealpha,1;);
	StartTransitioningCommand=cmd(zoomx,1;zoomy,0;sleep,0.2;bounceend,0.1;zoomy,1;sleep,0.6;accelerate,0.3;zoomx,0;zoomy,0;diffusealpha,0;);
};

return t;