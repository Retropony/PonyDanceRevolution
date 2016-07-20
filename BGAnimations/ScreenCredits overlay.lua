-- To add a section to the credits, use the following:
-- local theme_credits= {
-- 	name= "Theme Credits", -- the name of your section
-- 	"Me", -- The people you want to list in your section.
-- 	"Myself",
-- 	"My other self",
--  {logo= "pro_dude", name= "Pro self"}, -- Someone who has a logo image.
--     -- This logo image would be "Graphics/CreditsLogo pro_dude.png".
-- }
-- StepManiaCredits.AddSection(theme_credits)
--
-- If you want to add your section after an existing section, use the following:
-- StepManiaCredits.AddSection(theme_credits, 7)
--
-- Or position can be the name of a section to insert after:
-- StepManiaCredits.AddSection(theme_credits, "Special Thanks")
--
-- Or if you want to add your section before a section:
-- StepManiaCredits.AddSection(theme_credits, "Special Thanks", true)

local pdr1 = {
	name= "PONY DANCE REVOLUTION -1st Party-",
 	"Created by",
	"Retropony",
	};

local pdr2 = {
	name= "CODE ASSISTANCE",
 	"T.H.A.U.",
	"Lirodon",
	};

local pdr3 = {
	name= "GRAPHICS",
 	"Pixel Art: Desktop Ponies",
	"Pony vectors:",
	"DashieSparkle / nano23823 / jeatz-axl",
	"kysss90 / zziccardi / hunterscars",
	"aethon056 / xxxthehtfgodxx / SilverVectors",
	"biodegradablebox / CassidyCreations / Caliazian",
	"lilcinnamon / Luckreza8 / Zacatron94",
	"moongazeponies / Bluetech / NabbieKitty",
	"90sigma / Vector-Brony / Checker-Pony",
	"scourge707 / Scrimpeh / Ready2Fail",
	"sircinnamon / Durpy / TheBossCamacho",
	"Vectorized Unicorn / DjDavid98 / ispincharles",
	"Austiniousi / Makintosh91 / FreddieBox",
	"SolusJBJ / DragonMaster137 / KingDark0001",
	"Paula2003 / Archive-Alicorn",
	"Sairoch / SketchMCreations",
	};

local pdr4 = {
	name= "MUSICS",
 	"Alex S.",
	"TranceBeatPony",
	"Sim Gretina",
	"PhillyPu",
	"",
	"SOUND EFFECTS",
	"from Trotmania (for the moment)",
	};

local pdr5 = {
	name= "SPECIAL THANKS",
 	"will be added later",
	};

StepManiaCredits.AddSection(pdr1, 1);
StepManiaCredits.AddSection(pdr2, 2);
StepManiaCredits.AddSection(pdr3, 3);
StepManiaCredits.AddSection(pdr4, 4);
StepManiaCredits.AddSection(pdr5, 5);

-- StepManiaCredits is defined in _fallback/Scripts/04 CreditsHelpers.lua.

local line_on = cmd(zoom,0.875;strokecolor,color("#444444");shadowcolor,color("#444444");shadowlength,1)
local section_on = cmd(diffuse,color("#88DDFF");strokecolor,color("#446688");shadowcolor,color("#446688");shadowlength,1)
local subsection_on = cmd(diffuse,color("#88DDFF");strokecolor,color("#446688");shadowcolor,color("#446688");shadowlength,1)
local item_padding_start = 4;
local line_height= 30
-- Tell the credits table the line height so it can use it for logo sizing.
StepManiaCredits.SetLineHeight(line_height)

local creditScroller = Def.ActorScroller {
	SecondsPerItem = 0.5;
	NumItemsToDraw = 40;
	TransformFunction = function( self, offset, itemIndex, numItems)
		self:y(line_height*offset)
	end;
	OnCommand = cmd(scrollwithpadding,item_padding_start,15);
}

-- Add sections with padding.
for section in ivalues(StepManiaCredits.Get()) do
	StepManiaCredits.AddLineToScroller(creditScroller, section.name, section_on)
	for name in ivalues(section) do
		if name.type == "subsection" then
			StepManiaCredits.AddLineToScroller(creditScroller, name, subsection_on)
		else
			StepManiaCredits.AddLineToScroller(creditScroller, name, line_on)
		end
	end
	StepManiaCredits.AddLineToScroller(creditScroller)
	StepManiaCredits.AddLineToScroller(creditScroller)
end

creditScroller.BeginCommand=function(self)
	SCREENMAN:GetTopScreen():PostScreenMessage( 'SM_MenuTimer', (creditScroller.SecondsPerItem * (#creditScroller + item_padding_start) + 10) );
end;

return Def.ActorFrame{
	creditScroller..{
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-64),
	}
};
