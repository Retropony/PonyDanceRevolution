return Def.ActorFrame {
	LoadFont("Common Normal") .. {
		Text=string.format("%s %s", ProductFamily(), ProductVersion());
		AltText="StepMania";
		InitCommand=cmd(zoom,0.675);
		OnCommand=cmd(horizalign,right;diffuse,color("#FFFFFF");strokecolor,Color("Outline"););
	};
	LoadFont("Common Normal") .. {
		Text=string.format("%s", VersionDate());
		AltText="Unknown Version";
		InitCommand=cmd(y,16;zoom,0.5);
		OnCommand=cmd(horizalign,right;diffuse,color("#FFFFFF");strokecolor,Color("Outline"););
	};
};