return LoadActor(THEME:GetPathG("competition","life frame"))..{
	InitCommand=cmd(diffuse,PlayerColor(PLAYER_1);diffuserightedge,PlayerColor(PLAYER_2));
};