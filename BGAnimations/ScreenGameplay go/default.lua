local t = Def.ActorFrame {};

t[#t+1] = LoadActor("glow") .. {
	InitCommand=cmd(Center;draworder,105;diffusealpha,0;);
	StartTransitioningCommand=cmd(sleep,0.2;zoom,1;linear,0.3;diffusealpha,1;sleep,0.3;accelerate,0.3;diffusealpha,0;);
};
t[#t+1] = LoadActor("go") .. {
	InitCommand=cmd(Center;draworder,106;diffusealpha,0;);
	StartTransitioningCommand=cmd(zoom,0;accelerate,0.2;zoom,1;diffusealpha,1;sleep,0.6;accelerate,0.3;diffusealpha,0;);
};
t[#t+1] = LoadActor("go") .. {
	InitCommand=cmd(Center;draworder,107;diffusealpha,0;);
	StartTransitioningCommand=cmd(sleep,0.2;diffusealpha,0.6;zoom,1;decelerate,0.9;diffusealpha,0;zoom,1.4;);
};

return t;