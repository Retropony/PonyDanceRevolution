-- StepMania 5 Default Theme Preferences Handler with Custom Preferences (parce que je code avec le cul)
local function OptionNameString(str)
	return THEME:GetString('OptionNames',str)
end

local Prefs =
{
	BestPony =
	{
		Default = "pinkie",
		Choices = { "Adagio Dazzle", "Aloe", "Apple Bloom", "Apple Fritter", "Applejack", "Aria Blaze", "Babs Seed", "Berry Punch", "BonBon", "Button Mash", "Carrot Top", "Cheerilee", "Cheese Sandwich", "Cherry Jubilee", "Cloud Kicker", "Cloudchaser", "Coco Pommel", "ColoratuRara", "Countess Coloratura", "Daisy", "Daring Do", "Derpy Hooves", "Diamond Tiara", "Double Diamond", "Dr. Hooves", "Fancy Pants", "Flash Sentry", "Fleetfoot", "Fleur de Lis", "Flitter", "Flurry Heart", "Fluttershy", "Gilda", "Junebug", "Lightning Dust", "Lily Valley", "Limestone Pie", "Lotus Blossom", "Lyra Heartstrings", "Marble Pie", "Maud Pie", "Minuette", "Moondancer", "Mrs. Shy", "Night Glider", "Night Light", "Nightmare Moon", "Nurse Redheart", "Octavia Melody", "Party Favor", "Photo Finish", "Pinkie Pie", "Pipsqueak", "Princess Cadance", "Princess Celestia", "Princess Luna", "Queen Chrysalis", "Rainbow Dash", "Rarity", "Roseluck", "Saffron Masala", "Sapphire Shores", "Sassy Saddles", "Scootaloo", "Screw Loose", "Screwball", "Shining Armor", "Silver Spoon", "Soarin", "Sonata Dusk", "Spitfire", "Spoiled Rich", "Starlight Glimmer", "Sugar Belle", "Sunset Shimmer", "Sweet Biscuit", "Sweetie Belle", "Tree Hugger", "Trixie Lulamoon", "Twilight Sparkle", "Twilight Velvet", "Vinyl Scratch" },
		Values = { "adagio", "aloe", "applebloom", "applefritter", "applejack", "aria", "babsseed", "punch", "bonbon", "buttonmash", "carrottop", "cheerilee", "cheese", "cherry", "cloudkicker", "cloudchaser", "coco", "coloratura", "countess", "daisy", "daringdo", "derpy", "diamondtiara", "doublediamond", "doctor", "fancypants", "flashsentry", "fleetfoot", "fleurdelis", "flitter", "flurryheart", "fluttershy", "gilda", "junebug", "lightning", "lilyvalley", "limestone", "lotus", "lyra", "marble", "maudpie", "minuette", "moondancer", "mrsshy", "nightglider", "nightlight", "nmmoon", "nurse", "octavia", "partyfavor", "photofinish", "pinkie", "pipsqueak", "cadance", "celestia", "luna", "chrysalis", "dash", "rarity", "roseluck", "saffron", "sapphireshores", "sassysaddles", "scootaloo", "screwloose", "screwball", "shining", "silverspoon", "soarin", "sonata", "spitfire", "spoiledrich", "starlight", "sugarbelle", "sunset", "sweetbiscuit", "sweetie", "treehugger", "trixie", "twilight", "velvet", "vinyl" }
	},
	ExtraModifier =
	{
		Default = "default,2x,reverse",
		Choices = { "Reverse (default)", "Speed 1.5x", "Hyper Speed 4x", "ASSHOLE", "No modifier" },
		Values = { "default,2x,reverse", "default,1.5x", "default,4x", "default,2x,drunk,dizzy,confusion,mini,50% tornado,tipsy,bumpy,beat,45% xmode,twirl,roll,wide,big,quick,bmrize,skippy,echo,stomp,planted,twister", "default"}
	},
	EEModifier =
	{
		Default = "default,2x,reverse",
		Choices = { "Reverse (default)", "Speed 1.5x", "Hyper Speed 4x", "ASSHOLE", "No modifier" },
		Values = { "default,2x,reverse", "default,1.5x", "default,4x", "default,2x,drunk,dizzy,confusion,mini,50% tornado,tipsy,bumpy,beat,45% xmode,twirl,roll,wide,big,quick,bmrize,skippy,echo,stomp,planted,twister", "default"}
	},
	ExtraStage =
	{
		Default = "failimmediatecontinue,norecover",
		Choices = { "No recover (default)", "6 lives", "5 lives", "4 lives", "No modifier" },
		Values = { "failimmediatecontinue,norecover", "failimmediate,6 lives,battery", "failimmediate,5 lives,battery", "failimmediate,4 lives,battery", "default"}
	},
	EEStage =
	{
		Default = "failimmediate,suddendeath",
		Choices = { "Sudden Death (default)", "3 lives", "2 lives", "1 life", "No modifier" },
		Values = { "failimmediate,suddendeath", "failimmediate,3 lives,battery", "failimmediate,2 lives,battery", "failimmediate,1 lives,battery", "default"}
	},
	JudgmentGraphic =
	{
		Default = "TM2",
		Choices = { "Stepmania 3.9", "In the Groove 2", "Pinkie Pie Style", "Simply Love", "Trotmania Chrystalize", "Trotmania III" },
		Values = { "3_9", "ITG2", "Pinkie", "Love", "TM2", "TM3" }
	},
	AutoSetStyle =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	GameplayShowStepsDisplay = 
	{
		Default = true,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	GameplayShowScore =
	{
		Default = true,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	ShowLotsaOptions =
	{
		Default = true,
		Choices = { OptionNameString('Many'), OptionNameString('Few') },
		Values = { true, false }
	},
	LongFail =
	{
		Default = false,
		Choices = { OptionNameString('Short'), OptionNameString('Long') },
		Values = { false, true }
	},
	NotePosition =
	{
		Default = true,
		Choices = { OptionNameString('Normal'), OptionNameString('Lower') },
		Values = { true, false }
	},
	ComboOnRolls =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	FlashyCombo =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	ComboUnderField =
	{
		Default = true,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	FancyUIBG =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	TimingDisplay =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	GameplayFooter =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	GreatContinuesCombo =
	{
		Default = 'TapNoteScore_W3',
		Choices = { OptionNameString('GreatJudge'), OptionNameString('GoodJudge') },
		Values = { 'TapNoteScore_W3', 'TapNoteScore_W4' }
	},
	ArrowsNearCenter =
	{
		Default = true,
		Choices = { OptionNameString('EdgeOfScreen'), OptionNameString('CloseToCenter') },
		Values = { true, false }
	},
}

ThemePrefs.InitAll(Prefs)

function InitUserPrefs()
	local Prefs = {
		UserPrefScoringMode = 'DDR Extreme',
        UserPrefSoundPack   = 'default',
		UserPrefProtimingP1 = false,
		UserPrefProtimingP2 = false,
	}
	for k, v in pairs(Prefs) do
		-- kind of xxx
		local GetPref = type(v) == "boolean" and GetUserPrefB or GetUserPref
		if GetPref(k) == nil then
			SetUserPref(k, v)
		end
	end

	-- screen filter
	setenv("ScreenFilterP1",0)
	setenv("ScreenFilterP2",0)
end

--[[ option rows ]]

-- screen filter
function OptionRowScreenFilter()
	local t = {
		Name="ScreenFilter",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = { THEME:GetString('OptionNames','Off'), '0.1', '0.2', '0.3', '0.4', '0.5', '0.6', '0.7', '0.8', '0.9', '1.0', },
		LoadSelections = function(self, list, pn)
			local pName = ToEnumShortString(pn)
			local filterValue = getenv("ScreenFilter"..pName)
			if filterValue ~= nil then
				local val = scale(tonumber(filterValue),0,1,1,#list )
				list[val] = true
			else
				setenv("ScreenFilter"..pName,0)
				list[1] = true
			end
		end,
		SaveSelections = function(self, list, pn)
			local pName = ToEnumShortString(pn)
			local found = false
			for i=1,#list do
				if not found then
					if list[i] == true then
						local val = scale(i,1,#list,0,1)
						setenv("ScreenFilter"..pName,val)
						found = true
					end
				end
			end
		end,
	};
	setmetatable(t, t)
	return t
end

-- protiming
function OptionRowProTiming()
	local t = {
		Name = "ProTiming",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = {
			THEME:GetString('OptionNames','Off'),
			THEME:GetString('OptionNames','On')
		},
		LoadSelections = function(self, list, pn)
			if GetUserPrefB("UserPrefProtiming" .. ToEnumShortString(pn)) then
				local bShow = GetUserPrefB("UserPrefProtiming" .. ToEnumShortString(pn))
				if bShow then
					list[2] = true
				else
					list[1] = true
				end
			else
				list[1] = true
			end
		end,
		SaveSelections = function(self, list, pn)
			local bSave = list[2] and true or false
			SetUserPref("UserPrefProtiming" .. ToEnumShortString(pn), bSave)
		end
	}
	setmetatable(t, t)
	return t
end

--[[ end option rows ]]
