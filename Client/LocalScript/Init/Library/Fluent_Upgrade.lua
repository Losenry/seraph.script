local cloneref = cloneref or function(a)
	return a
end;
local b, c = {
	Version = "1.0.1",
	Themes = {
		AccentColor = Color3.fromRGB(0, 0, 0),
		BackgroundColor = Color3.fromRGB(255, 68, 177),
		TextColor = Color3.fromRGB(255, 255, 255),
		DisabledTextColor = Color3.fromRGB(255, 255, 255)
	},
	ThemeList = {},
	Presets = {
		["Default"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(255, 68, 177),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Navy"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(130, 174, 255),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Magenta"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(200, 75, 150),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Olive"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(100, 220, 100),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Lime"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(225, 255, 125),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Amethyst"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(200, 130, 115),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Onyx"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(255, 255, 255),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Lemon"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(255, 200, 100),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Rouge"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(230, 130, 180),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Cobalt"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(100, 155, 200),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Crimson"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(225, 100, 100),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Snow"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(75, 75, 75),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		},
		["Violet"] = {
			AccentColor = Color3.fromRGB(0, 0, 0),
			BackgroundColor = Color3.fromRGB(125, 85, 225),
			TextColor = Color3.fromRGB(255, 255, 255),
			DisabledTextColor = Color3.fromRGB(255, 255, 255)
		}
	},
	Settings = {
		Keybind = Enum.KeyCode.Home,
		Transparency = 0.85,
		FontFace = nil
	},
	Services = setmetatable({}, {
		__index = function(d, e)
			local f = cloneref(game:GetService(e))
			return f
		end
	}),
	Flags = {},
	Animation = true,
	AnimationSpeed = 0.1,
	Elements = {
		Windows = {},
		Dropdowns = {},
		Colorpickers = {},
		Sliders = {},
		Toggles = {},
		Keybinds = {},
		Textboxes = {},
		Labels = {},
		Buttons = {},
		Separators = {}
	},
	EasingStyle = {
		Linear = Enum.EasingStyle.Linear,
		Sine = Enum.EasingStyle.Sine,
		Back = Enum.EasingStyle.Back,
		Quad = Enum.EasingStyle.Quad,
		Quart = Enum.EasingStyle.Quart,
		Quint = Enum.EasingStyle.Quint,
		Bounce = Enum.EasingStyle.Bounce,
		Elastic = Enum.EasingStyle.Elastic,
		Exponential = Enum.EasingStyle.Exponential,
		Circular = Enum.EasingStyle.Circular
	},
	EasingDirection = {
		In = Enum.EasingDirection.In,
		Out = Enum.EasingDirection.Out,
		InOut = Enum.EasingDirection.InOut
	},
	IsMobile = false,
	Fonts = {
		Inter = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	},
	Storage = {
		Background = {},
		BackgroundGradient = {},
		Notification = {},
		SelectedFrame = {},
		Toggles = {},
		ToggleImages = {},
		DropdownGradient = {},
		Selected = {},
		SliderValue = {},
		SliderImage = {}
	},
	Connections = {}
}, {
	Icons = {["lucide-accessibility"] = "rbxassetid://10709751939",["lucide-activity"] = "rbxassetid://10709752035",["lucide-air-vent"] = "rbxassetid://10709752131",["lucide-airplay"] = "rbxassetid://10709752254",["lucide-alarm-check"] = "rbxassetid://10709752405",["lucide-alarm-clock"] = "rbxassetid://10709752630",["lucide-alarm-clock-off"] = "rbxassetid://10709752508",["lucide-alarm-minus"] = "rbxassetid://10709752732",["lucide-alarm-plus"] = "rbxassetid://10709752825",["lucide-album"] = "rbxassetid://10709752906",["lucide-alert-circle"] = "rbxassetid://10709752996",["lucide-alert-octagon"] = "rbxassetid://10709753064",["lucide-alert-triangle"] = "rbxassetid://10709753149",["lucide-align-center"] = "rbxassetid://10709753570",["lucide-align-center-horizontal"] = "rbxassetid://10709753272",["lucide-align-center-vertical"] = "rbxassetid://10709753421",["lucide-align-end-horizontal"] = "rbxassetid://10709753692",["lucide-align-end-vertical"] = "rbxassetid://10709753808",["lucide-align-horizontal-distribute-center"] = "rbxassetid://10747779791",["lucide-align-horizontal-distribute-end"] = "rbxassetid://10747784534",["lucide-align-horizontal-distribute-start"] = "rbxassetid://10709754118",["lucide-align-horizontal-justify-center"] = "rbxassetid://10709754204",["lucide-align-horizontal-justify-end"] = "rbxassetid://10709754317",["lucide-align-horizontal-justify-start"] = "rbxassetid://10709754436",["lucide-align-horizontal-space-around"] = "rbxassetid://10709754590",["lucide-align-horizontal-space-between"] = "rbxassetid://10709754749",["lucide-align-justify"] = "rbxassetid://10709759610",["lucide-align-left"] = "rbxassetid://10709759764",["lucide-align-right"] = "rbxassetid://10709759895",["lucide-align-start-horizontal"] = "rbxassetid://10709760051",["lucide-align-start-vertical"] = "rbxassetid://10709760244",["lucide-align-vertical-distribute-center"] = "rbxassetid://10709760351",["lucide-align-vertical-distribute-end"] = "rbxassetid://10709760434",["lucide-align-vertical-distribute-start"] = "rbxassetid://10709760612",["lucide-align-vertical-justify-center"] = "rbxassetid://10709760814",["lucide-align-vertical-justify-end"] = "rbxassetid://10709761003",["lucide-align-vertical-justify-start"] = "rbxassetid://10709761176",["lucide-align-vertical-space-around"] = "rbxassetid://10709761324",["lucide-align-vertical-space-between"] = "rbxassetid://10709761434",["lucide-anchor"] = "rbxassetid://10709761530",["lucide-angry"] = "rbxassetid://10709761629",["lucide-annoyed"] = "rbxassetid://10709761722",["lucide-aperture"] = "rbxassetid://10709761813",["lucide-apple"] = "rbxassetid://10709761889",["lucide-archive"] = "rbxassetid://10709762233",["lucide-archive-restore"] = "rbxassetid://10709762058",["lucide-armchair"] = "rbxassetid://10709762327",["lucide-arrow-big-down"] = "rbxassetid://10747796644",["lucide-arrow-big-left"] = "rbxassetid://10709762574",["lucide-arrow-big-right"] = "rbxassetid://10709762727",["lucide-arrow-big-up"] = "rbxassetid://10709762879",["lucide-arrow-down"] = "rbxassetid://10709767827",["lucide-arrow-down-circle"] = "rbxassetid://10709763034",["lucide-arrow-down-left"] = "rbxassetid://10709767656",["lucide-arrow-down-right"] = "rbxassetid://10709767750",["lucide-arrow-left"] = "rbxassetid://10709768114",["lucide-arrow-left-circle"] = "rbxassetid://10709767936",["lucide-arrow-left-right"] = "rbxassetid://10709768019",["lucide-arrow-right"] = "rbxassetid://10709768347",["lucide-arrow-right-circle"] = "rbxassetid://10709768226",["lucide-arrow-up"] = "rbxassetid://10709768939",["lucide-arrow-up-circle"] = "rbxassetid://10709768432",["lucide-arrow-up-down"] = "rbxassetid://10709768538",["lucide-arrow-up-left"] = "rbxassetid://10709768661",["lucide-arrow-up-right"] = "rbxassetid://10709768787",["lucide-asterisk"] = "rbxassetid://10709769095",["lucide-at-sign"] = "rbxassetid://10709769286",["lucide-award"] = "rbxassetid://10709769406",["lucide-axe"] = "rbxassetid://10709769508",["lucide-axis-3d"] = "rbxassetid://10709769598",["lucide-baby"] = "rbxassetid://10709769732",["lucide-backpack"] = "rbxassetid://10709769841",["lucide-baggage-claim"] = "rbxassetid://10709769935",["lucide-banana"] = "rbxassetid://10709770005",["lucide-banknote"] = "rbxassetid://10709770178",["lucide-bar-chart"] = "rbxassetid://10709773755",["lucide-bar-chart-2"] = "rbxassetid://10709770317",["lucide-bar-chart-3"] = "rbxassetid://10709770431",["lucide-bar-chart-4"] = "rbxassetid://10709770560",["lucide-bar-chart-horizontal"] = "rbxassetid://10709773669",["lucide-barcode"] = "rbxassetid://10747360675",["lucide-baseline"] = "rbxassetid://10709773863",["lucide-bath"] = "rbxassetid://10709773963",["lucide-battery"] = "rbxassetid://10709774640",["lucide-battery-charging"] = "rbxassetid://10709774068",["lucide-battery-full"] = "rbxassetid://10709774206",["lucide-battery-low"] = "rbxassetid://10709774370",["lucide-battery-medium"] = "rbxassetid://10709774513",["lucide-beaker"] = "rbxassetid://10709774756",["lucide-bed"] = "rbxassetid://10709775036",["lucide-bed-double"] = "rbxassetid://10709774864",["lucide-bed-single"] = "rbxassetid://10709774968",["lucide-beer"] = "rbxassetid://10709775167",["lucide-bell"] = "rbxassetid://10709775704",["lucide-bell-minus"] = "rbxassetid://10709775241",["lucide-bell-off"] = "rbxassetid://10709775320",["lucide-bell-plus"] = "rbxassetid://10709775448",["lucide-bell-ring"] = "rbxassetid://10709775560",["lucide-bike"] = "rbxassetid://10709775894",["lucide-binary"] = "rbxassetid://10709776050",["lucide-bitcoin"] = "rbxassetid://10709776126",["lucide-bluetooth"] = "rbxassetid://10709776655",["lucide-bluetooth-connected"] = "rbxassetid://10709776240",["lucide-bluetooth-off"] = "rbxassetid://10709776344",["lucide-bluetooth-searching"] = "rbxassetid://10709776501",["lucide-bold"] = "rbxassetid://10747813908",["lucide-bomb"] = "rbxassetid://10709781460",["lucide-bone"] = "rbxassetid://10709781605",["lucide-book"] = "rbxassetid://10709781824",["lucide-book-open"] = "rbxassetid://10709781717",["lucide-bookmark"] = "rbxassetid://10709782154",["lucide-bookmark-minus"] = "rbxassetid://10709781919",["lucide-bookmark-plus"] = "rbxassetid://10709782044",["lucide-bot"] = "rbxassetid://10709782230",["lucide-box"] = "rbxassetid://10709782497",["lucide-box-select"] = "rbxassetid://10709782342",["lucide-boxes"] = "rbxassetid://10709782582",["lucide-briefcase"] = "rbxassetid://10709782662",["lucide-brush"] = "rbxassetid://10709782758",["lucide-bug"] = "rbxassetid://10709782845",["lucide-building"] = "rbxassetid://10709783051",["lucide-building-2"] = "rbxassetid://10709782939",["lucide-bus"] = "rbxassetid://10709783137",["lucide-cake"] = "rbxassetid://10709783217",["lucide-calculator"] = "rbxassetid://10709783311",["lucide-calendar"] = "rbxassetid://10709789505",["lucide-calendar-check"] = "rbxassetid://10709783474",["lucide-calendar-check-2"] = "rbxassetid://10709783392",["lucide-calendar-clock"] = "rbxassetid://10709783577",["lucide-calendar-days"] = "rbxassetid://10709783673",["lucide-calendar-heart"] = "rbxassetid://10709783835",["lucide-calendar-minus"] = "rbxassetid://10709783959",["lucide-calendar-off"] = "rbxassetid://10709788784",["lucide-calendar-plus"] = "rbxassetid://10709788937",["lucide-calendar-range"] = "rbxassetid://10709789053",["lucide-calendar-search"] = "rbxassetid://10709789200",["lucide-calendar-x"] = "rbxassetid://10709789407",["lucide-calendar-x-2"] = "rbxassetid://10709789329",["lucide-camera"] = "rbxassetid://10709789686",["lucide-camera-off"] = "rbxassetid://10747822677",["lucide-car"] = "rbxassetid://10709789810",["lucide-carrot"] = "rbxassetid://10709789960",["lucide-cast"] = "rbxassetid://10709790097",["lucide-charge"] = "rbxassetid://10709790202",["lucide-check"] = "rbxassetid://10709790644",["lucide-check-circle"] = "rbxassetid://10709790387",["lucide-check-circle-2"] = "rbxassetid://10709790298",["lucide-check-square"] = "rbxassetid://10709790537",["lucide-chef-hat"] = "rbxassetid://10709790757",["lucide-cherry"] = "rbxassetid://10709790875",["lucide-chevron-down"] = "rbxassetid://10709790948",["lucide-chevron-first"] = "rbxassetid://10709791015",["lucide-chevron-last"] = "rbxassetid://10709791130",["lucide-chevron-left"] = "rbxassetid://10709791281",["lucide-chevron-right"] = "rbxassetid://10709791437",["lucide-chevron-up"] = "rbxassetid://10709791523",["lucide-chevrons-down"] = "rbxassetid://10709796864",["lucide-chevrons-down-up"] = "rbxassetid://10709791632",["lucide-chevrons-left"] = "rbxassetid://10709797151",["lucide-chevrons-left-right"] = "rbxassetid://10709797006",["lucide-chevrons-right"] = "rbxassetid://10709797382",["lucide-chevrons-right-left"] = "rbxassetid://10709797274",["lucide-chevrons-up"] = "rbxassetid://10709797622",["lucide-chevrons-up-down"] = "rbxassetid://10709797508",["lucide-chrome"] = "rbxassetid://10709797725",["lucide-circle"] = "rbxassetid://10709798174",["lucide-circle-dot"] = "rbxassetid://10709797837",["lucide-circle-ellipsis"] = "rbxassetid://10709797985",["lucide-circle-slashed"] = "rbxassetid://10709798100",["lucide-citrus"] = "rbxassetid://10709798276",["lucide-clapperboard"] = "rbxassetid://10709798350",["lucide-clipboard"] = "rbxassetid://10709799288",["lucide-clipboard-check"] = "rbxassetid://10709798443",["lucide-clipboard-copy"] = "rbxassetid://10709798574",["lucide-clipboard-edit"] = "rbxassetid://10709798682",["lucide-clipboard-list"] = "rbxassetid://10709798792",["lucide-clipboard-signature"] = "rbxassetid://10709798890",["lucide-clipboard-type"] = "rbxassetid://10709798999",["lucide-clipboard-x"] = "rbxassetid://10709799124",["lucide-clock"] = "rbxassetid://10709805144",["lucide-clock-1"] = "rbxassetid://10709799535",["lucide-clock-10"] = "rbxassetid://10709799718",["lucide-clock-11"] = "rbxassetid://10709799818",["lucide-clock-12"] = "rbxassetid://10709799962",["lucide-clock-2"] = "rbxassetid://10709803876",["lucide-clock-3"] = "rbxassetid://10709803989",["lucide-clock-4"] = "rbxassetid://10709804164",["lucide-clock-5"] = "rbxassetid://10709804291",["lucide-clock-6"] = "rbxassetid://10709804435",["lucide-clock-7"] = "rbxassetid://10709804599",["lucide-clock-8"] = "rbxassetid://10709804784",["lucide-clock-9"] = "rbxassetid://10709804996",["lucide-cloud"] = "rbxassetid://10709806740",["lucide-cloud-cog"] = "rbxassetid://10709805262",["lucide-cloud-drizzle"] = "rbxassetid://10709805371",["lucide-cloud-fog"] = "rbxassetid://10709805477",["lucide-cloud-hail"] = "rbxassetid://10709805596",["lucide-cloud-lightning"] = "rbxassetid://10709805727",["lucide-cloud-moon"] = "rbxassetid://10709805942",["lucide-cloud-moon-rain"] = "rbxassetid://10709805838",["lucide-cloud-off"] = "rbxassetid://10709806060",["lucide-cloud-rain"] = "rbxassetid://10709806277",["lucide-cloud-rain-wind"] = "rbxassetid://10709806166",["lucide-cloud-snow"] = "rbxassetid://10709806374",["lucide-cloud-sun"] = "rbxassetid://10709806631",["lucide-cloud-sun-rain"] = "rbxassetid://10709806475",["lucide-cloudy"] = "rbxassetid://10709806859",["lucide-clover"] = "rbxassetid://10709806995",["lucide-code"] = "rbxassetid://10709810463",["lucide-code-2"] = "rbxassetid://10709807111",["lucide-codepen"] = "rbxassetid://10709810534",["lucide-codesandbox"] = "rbxassetid://10709810676",["lucide-coffee"] = "rbxassetid://10709810814",["lucide-cog"] = "rbxassetid://10709810948",["lucide-coins"] = "rbxassetid://10709811110",["lucide-columns"] = "rbxassetid://10709811261",["lucide-command"] = "rbxassetid://10709811365",["lucide-compass"] = "rbxassetid://10709811445",["lucide-component"] = "rbxassetid://10709811595",["lucide-concierge-bell"] = "rbxassetid://10709811706",["lucide-connection"] = "rbxassetid://10747361219",["lucide-contact"] = "rbxassetid://10709811834",["lucide-contrast"] = "rbxassetid://10709811939",["lucide-cookie"] = "rbxassetid://10709812067",["lucide-copy"] = "rbxassetid://10709812159",["lucide-copyleft"] = "rbxassetid://10709812251",["lucide-copyright"] = "rbxassetid://10709812311",["lucide-corner-down-left"] = "rbxassetid://10709812396",["lucide-corner-down-right"] = "rbxassetid://10709812485",["lucide-corner-left-down"] = "rbxassetid://10709812632",["lucide-corner-left-up"] = "rbxassetid://10709812784",["lucide-corner-right-down"] = "rbxassetid://10709812939",["lucide-corner-right-up"] = "rbxassetid://10709813094",["lucide-corner-up-left"] = "rbxassetid://10709813185",["lucide-corner-up-right"] = "rbxassetid://10709813281",["lucide-cpu"] = "rbxassetid://10709813383",["lucide-croissant"] = "rbxassetid://10709818125",["lucide-crop"] = "rbxassetid://10709818245",["lucide-cross"] = "rbxassetid://10709818399",["lucide-crosshair"] = "rbxassetid://10709818534",["lucide-crown"] = "rbxassetid://10709818626",["lucide-cup-soda"] = "rbxassetid://10709818763",["lucide-curly-braces"] = "rbxassetid://10709818847",["lucide-currency"] = "rbxassetid://10709818931",["lucide-database"] = "rbxassetid://10709818996",["lucide-delete"] = "rbxassetid://10709819059",["lucide-diamond"] = "rbxassetid://10709819149",["lucide-dice-1"] = "rbxassetid://10709819266",["lucide-dice-2"] = "rbxassetid://10709819361",["lucide-dice-3"] = "rbxassetid://10709819508",["lucide-dice-4"] = "rbxassetid://10709819670",["lucide-dice-5"] = "rbxassetid://10709819801",["lucide-dice-6"] = "rbxassetid://10709819896",["lucide-dices"] = "rbxassetid://10723343321",["lucide-diff"] = "rbxassetid://10723343416",["lucide-disc"] = "rbxassetid://10723343537",["lucide-divide"] = "rbxassetid://10723343805",["lucide-divide-circle"] = "rbxassetid://10723343636",["lucide-divide-square"] = "rbxassetid://10723343737",["lucide-dollar-sign"] = "rbxassetid://10723343958",["lucide-download"] = "rbxassetid://10723344270",["lucide-download-cloud"] = "rbxassetid://10723344088",["lucide-droplet"] = "rbxassetid://10723344432",["lucide-droplets"] = "rbxassetid://10734883356",["lucide-drumstick"] = "rbxassetid://10723344737",["lucide-edit"] = "rbxassetid://10734883598",["lucide-edit-2"] = "rbxassetid://10723344885",["lucide-edit-3"] = "rbxassetid://10723345088",["lucide-egg"] = "rbxassetid://10723345518",["lucide-egg-fried"] = "rbxassetid://10723345347",["lucide-electricity"] = "rbxassetid://10723345749",["lucide-electricity-off"] = "rbxassetid://10723345643",["lucide-equal"] = "rbxassetid://10723345990",["lucide-equal-not"] = "rbxassetid://10723345866",["lucide-eraser"] = "rbxassetid://10723346158",["lucide-euro"] = "rbxassetid://10723346372",["lucide-expand"] = "rbxassetid://10723346553",["lucide-external-link"] = "rbxassetid://10723346684",["lucide-eye"] = "rbxassetid://10723346959",["lucide-eye-off"] = "rbxassetid://10723346871",["lucide-factory"] = "rbxassetid://10723347051",["lucide-fan"] = "rbxassetid://10723354359",["lucide-fast-forward"] = "rbxassetid://10723354521",["lucide-feather"] = "rbxassetid://10723354671",["lucide-figma"] = "rbxassetid://10723354801",["lucide-file"] = "rbxassetid://10723374641",["lucide-file-archive"] = "rbxassetid://10723354921",["lucide-file-audio"] = "rbxassetid://10723355148",["lucide-file-audio-2"] = "rbxassetid://10723355026",["lucide-file-axis-3d"] = "rbxassetid://10723355272",["lucide-file-badge"] = "rbxassetid://10723355622",["lucide-file-badge-2"] = "rbxassetid://10723355451",["lucide-file-bar-chart"] = "rbxassetid://10723355887",["lucide-file-bar-chart-2"] = "rbxassetid://10723355746",["lucide-file-box"] = "rbxassetid://10723355989",["lucide-file-check"] = "rbxassetid://10723356210",["lucide-file-check-2"] = "rbxassetid://10723356100",["lucide-file-clock"] = "rbxassetid://10723356329",["lucide-file-code"] = "rbxassetid://10723356507",["lucide-file-cog"] = "rbxassetid://10723356830",["lucide-file-cog-2"] = "rbxassetid://10723356676",["lucide-file-diff"] = "rbxassetid://10723357039",["lucide-file-digit"] = "rbxassetid://10723357151",["lucide-file-down"] = "rbxassetid://10723357322",["lucide-file-edit"] = "rbxassetid://10723357495",["lucide-file-heart"] = "rbxassetid://10723357637",["lucide-file-image"] = "rbxassetid://10723357790",["lucide-file-input"] = "rbxassetid://10723357933",["lucide-file-json"] = "rbxassetid://10723364435",["lucide-file-json-2"] = "rbxassetid://10723364361",["lucide-file-key"] = "rbxassetid://10723364605",["lucide-file-key-2"] = "rbxassetid://10723364515",["lucide-file-line-chart"] = "rbxassetid://10723364725",["lucide-file-lock"] = "rbxassetid://10723364957",["lucide-file-lock-2"] = "rbxassetid://10723364861",["lucide-file-minus"] = "rbxassetid://10723365254",["lucide-file-minus-2"] = "rbxassetid://10723365086",["lucide-file-output"] = "rbxassetid://10723365457",["lucide-file-pie-chart"] = "rbxassetid://10723365598",["lucide-file-plus"] = "rbxassetid://10723365877",["lucide-file-plus-2"] = "rbxassetid://10723365766",["lucide-file-question"] = "rbxassetid://10723365987",["lucide-file-scan"] = "rbxassetid://10723366167",["lucide-file-search"] = "rbxassetid://10723366550",["lucide-file-search-2"] = "rbxassetid://10723366340",["lucide-file-signature"] = "rbxassetid://10723366741",["lucide-file-spreadsheet"] = "rbxassetid://10723366962",["lucide-file-symlink"] = "rbxassetid://10723367098",["lucide-file-terminal"] = "rbxassetid://10723367244",["lucide-file-text"] = "rbxassetid://10723367380",["lucide-file-type"] = "rbxassetid://10723367606",["lucide-file-type-2"] = "rbxassetid://10723367509",["lucide-file-up"] = "rbxassetid://10723367734",["lucide-file-video"] = "rbxassetid://10723373884",["lucide-file-video-2"] = "rbxassetid://10723367834",["lucide-file-volume"] = "rbxassetid://10723374172",["lucide-file-volume-2"] = "rbxassetid://10723374030",["lucide-file-warning"] = "rbxassetid://10723374276",["lucide-file-x"] = "rbxassetid://10723374544",["lucide-file-x-2"] = "rbxassetid://10723374378",["lucide-files"] = "rbxassetid://10723374759",["lucide-film"] = "rbxassetid://10723374981",["lucide-filter"] = "rbxassetid://10723375128",["lucide-fingerprint"] = "rbxassetid://10723375250",["lucide-flag"] = "rbxassetid://10723375890",["lucide-flag-off"] = "rbxassetid://10723375443",["lucide-flag-triangle-left"] = "rbxassetid://10723375608",["lucide-flag-triangle-right"] = "rbxassetid://10723375727",["lucide-flame"] = "rbxassetid://10723376114",["lucide-flashlight"] = "rbxassetid://10723376471",["lucide-flashlight-off"] = "rbxassetid://10723376365",["lucide-flask-conical"] = "rbxassetid://10734883986",["lucide-flask-round"] = "rbxassetid://10723376614",["lucide-flip-horizontal"] = "rbxassetid://10723376884",["lucide-flip-horizontal-2"] = "rbxassetid://10723376745",["lucide-flip-vertical"] = "rbxassetid://10723377138",["lucide-flip-vertical-2"] = "rbxassetid://10723377026",["lucide-flower"] = "rbxassetid://10747830374",["lucide-flower-2"] = "rbxassetid://10723377305",["lucide-focus"] = "rbxassetid://10723377537",["lucide-folder"] = "rbxassetid://10723387563",["lucide-folder-archive"] = "rbxassetid://10723384478",["lucide-folder-check"] = "rbxassetid://10723384605",["lucide-folder-clock"] = "rbxassetid://10723384731",["lucide-folder-closed"] = "rbxassetid://10723384893",["lucide-folder-cog"] = "rbxassetid://10723385213",["lucide-folder-cog-2"] = "rbxassetid://10723385036",["lucide-folder-down"] = "rbxassetid://10723385338",["lucide-folder-edit"] = "rbxassetid://10723385445",["lucide-folder-heart"] = "rbxassetid://10723385545",["lucide-folder-input"] = "rbxassetid://10723385721",["lucide-folder-key"] = "rbxassetid://10723385848",["lucide-folder-lock"] = "rbxassetid://10723386005",["lucide-folder-minus"] = "rbxassetid://10723386127",["lucide-folder-open"] = "rbxassetid://10723386277",["lucide-folder-output"] = "rbxassetid://10723386386",["lucide-folder-plus"] = "rbxassetid://10723386531",["lucide-folder-search"] = "rbxassetid://10723386787",["lucide-folder-search-2"] = "rbxassetid://10723386674",["lucide-folder-symlink"] = "rbxassetid://10723386930",["lucide-folder-tree"] = "rbxassetid://10723387085",["lucide-folder-up"] = "rbxassetid://10723387265",["lucide-folder-x"] = "rbxassetid://10723387448",["lucide-folders"] = "rbxassetid://10723387721",["lucide-form-input"] = "rbxassetid://10723387841",["lucide-forward"] = "rbxassetid://10723388016",["lucide-frame"] = "rbxassetid://10723394389",["lucide-framer"] = "rbxassetid://10723394565",["lucide-frown"] = "rbxassetid://10723394681",["lucide-fuel"] = "rbxassetid://10723394846",["lucide-function-square"] = "rbxassetid://10723395041",["lucide-gamepad"] = "rbxassetid://10723395457",["lucide-gamepad-2"] = "rbxassetid://10723395215",["lucide-gauge"] = "rbxassetid://10723395708",["lucide-gavel"] = "rbxassetid://10723395896",["lucide-gem"] = "rbxassetid://10723396000",["lucide-ghost"] = "rbxassetid://10723396107",["lucide-gift"] = "rbxassetid://10723396402",["lucide-gift-card"] = "rbxassetid://10723396225",["lucide-git-branch"] = "rbxassetid://10723396676",["lucide-git-branch-plus"] = "rbxassetid://10723396542",["lucide-git-commit"] = "rbxassetid://10723396812",["lucide-git-compare"] = "rbxassetid://10723396954",["lucide-git-fork"] = "rbxassetid://10723397049",["lucide-git-merge"] = "rbxassetid://10723397165",["lucide-git-pull-request"] = "rbxassetid://10723397431",["lucide-git-pull-request-closed"] = "rbxassetid://10723397268",["lucide-git-pull-request-draft"] = "rbxassetid://10734884302",["lucide-glass"] = "rbxassetid://10723397788",["lucide-glass-2"] = "rbxassetid://10723397529",["lucide-glass-water"] = "rbxassetid://10723397678",["lucide-glasses"] = "rbxassetid://10723397895",["lucide-globe"] = "rbxassetid://10723404337",["lucide-globe-2"] = "rbxassetid://10723398002",["lucide-grab"] = "rbxassetid://10723404472",["lucide-graduation-cap"] = "rbxassetid://10723404691",["lucide-grape"] = "rbxassetid://10723404822",["lucide-grid"] = "rbxassetid://10723404936",["lucide-grip-horizontal"] = "rbxassetid://10723405089",["lucide-grip-vertical"] = "rbxassetid://10723405236",["lucide-hammer"] = "rbxassetid://10723405360",["lucide-hand"] = "rbxassetid://10723405649",["lucide-hand-metal"] = "rbxassetid://10723405508",["lucide-hard-drive"] = "rbxassetid://10723405749",["lucide-hard-hat"] = "rbxassetid://10723405859",["lucide-hash"] = "rbxassetid://10723405975",["lucide-haze"] = "rbxassetid://10723406078",["lucide-headphones"] = "rbxassetid://10723406165",["lucide-heart"] = "rbxassetid://10723406885",["lucide-heart-crack"] = "rbxassetid://10723406299",["lucide-heart-handshake"] = "rbxassetid://10723406480",["lucide-heart-off"] = "rbxassetid://10723406662",["lucide-heart-pulse"] = "rbxassetid://10723406795",["lucide-help-circle"] = "rbxassetid://10723406988",["lucide-hexagon"] = "rbxassetid://10723407092",["lucide-highlighter"] = "rbxassetid://10723407192",["lucide-history"] = "rbxassetid://10723407335",["lucide-home"] = "rbxassetid://10723407389",["lucide-hourglass"] = "rbxassetid://10723407498",["lucide-ice-cream"] = "rbxassetid://10723414308",["lucide-image"] = "rbxassetid://10723415040",["lucide-image-minus"] = "rbxassetid://10723414487",["lucide-image-off"] = "rbxassetid://10723414677",["lucide-image-plus"] = "rbxassetid://10723414827",["lucide-import"] = "rbxassetid://10723415205",["lucide-inbox"] = "rbxassetid://10723415335",["lucide-indent"] = "rbxassetid://10723415494",["lucide-indian-rupee"] = "rbxassetid://10723415642",["lucide-infinity"] = "rbxassetid://10723415766",["lucide-info"] = "rbxassetid://10723415903",["lucide-inspect"] = "rbxassetid://10723416057",["lucide-italic"] = "rbxassetid://10723416195",["lucide-japanese-yen"] = "rbxassetid://10723416363",["lucide-joystick"] = "rbxassetid://10723416527",["lucide-key"] = "rbxassetid://10723416652",["lucide-keyboard"] = "rbxassetid://10723416765",["lucide-lamp"] = "rbxassetid://10723417513",["lucide-lamp-ceiling"] = "rbxassetid://10723416922",["lucide-lamp-desk"] = "rbxassetid://10723417016",["lucide-lamp-floor"] = "rbxassetid://10723417131",["lucide-lamp-wall-down"] = "rbxassetid://10723417240",["lucide-lamp-wall-up"] = "rbxassetid://10723417356",["lucide-landmark"] = "rbxassetid://10723417608",["lucide-languages"] = "rbxassetid://10723417703",["lucide-laptop"] = "rbxassetid://10723423881",["lucide-laptop-2"] = "rbxassetid://10723417797",["lucide-lasso"] = "rbxassetid://10723424235",["lucide-lasso-select"] = "rbxassetid://10723424058",["lucide-laugh"] = "rbxassetid://10723424372",["lucide-layers"] = "rbxassetid://10723424505",["lucide-layout"] = "rbxassetid://10723425376",["lucide-layout-dashboard"] = "rbxassetid://10723424646",["lucide-layout-grid"] = "rbxassetid://10723424838",["lucide-layout-list"] = "rbxassetid://10723424963",["lucide-layout-template"] = "rbxassetid://10723425187",["lucide-leaf"] = "rbxassetid://10723425539",["lucide-library"] = "rbxassetid://10723425615",["lucide-life-buoy"] = "rbxassetid://10723425685",["lucide-lightbulb"] = "rbxassetid://10723425852",["lucide-lightbulb-off"] = "rbxassetid://10723425762",["lucide-line-chart"] = "rbxassetid://10723426393",["lucide-link"] = "rbxassetid://10723426722",["lucide-link-2"] = "rbxassetid://10723426595",["lucide-link-2-off"] = "rbxassetid://10723426513",["lucide-list"] = "rbxassetid://10723433811",["lucide-list-checks"] = "rbxassetid://10734884548",["lucide-list-end"] = "rbxassetid://10723426886",["lucide-list-minus"] = "rbxassetid://10723426986",["lucide-list-music"] = "rbxassetid://10723427081",["lucide-list-ordered"] = "rbxassetid://10723427199",["lucide-list-plus"] = "rbxassetid://10723427334",["lucide-list-start"] = "rbxassetid://10723427494",["lucide-list-video"] = "rbxassetid://10723427619",["lucide-list-x"] = "rbxassetid://10723433655",["lucide-loader"] = "rbxassetid://10723434070",["lucide-loader-2"] = "rbxassetid://10723433935",["lucide-locate"] = "rbxassetid://10723434557",["lucide-locate-fixed"] = "rbxassetid://10723434236",["lucide-locate-off"] = "rbxassetid://10723434379",["lucide-lock"] = "rbxassetid://10723434711",["lucide-log-in"] = "rbxassetid://10723434830",["lucide-log-out"] = "rbxassetid://10723434906",["lucide-luggage"] = "rbxassetid://10723434993",["lucide-magnet"] = "rbxassetid://10723435069",["lucide-mail"] = "rbxassetid://10734885430",["lucide-mail-check"] = "rbxassetid://10723435182",["lucide-mail-minus"] = "rbxassetid://10723435261",["lucide-mail-open"] = "rbxassetid://10723435342",["lucide-mail-plus"] = "rbxassetid://10723435443",["lucide-mail-question"] = "rbxassetid://10723435515",["lucide-mail-search"] = "rbxassetid://10734884739",["lucide-mail-warning"] = "rbxassetid://10734885015",["lucide-mail-x"] = "rbxassetid://10734885247",["lucide-mails"] = "rbxassetid://10734885614",["lucide-map"] = "rbxassetid://10734886202",["lucide-map-pin"] = "rbxassetid://10734886004",["lucide-map-pin-off"] = "rbxassetid://10734885803",["lucide-maximize"] = "rbxassetid://10734886735",["lucide-maximize-2"] = "rbxassetid://10734886496",["lucide-medal"] = "rbxassetid://10734887072",["lucide-megaphone"] = "rbxassetid://10734887454",["lucide-megaphone-off"] = "rbxassetid://10734887311",["lucide-meh"] = "rbxassetid://10734887603",["lucide-menu"] = "rbxassetid://10734887784",["lucide-message-circle"] = "rbxassetid://10734888000",["lucide-message-square"] = "rbxassetid://10734888228",["lucide-mic"] = "rbxassetid://10734888864",["lucide-mic-2"] = "rbxassetid://10734888430",["lucide-mic-off"] = "rbxassetid://10734888646",["lucide-microscope"] = "rbxassetid://10734889106",["lucide-microwave"] = "rbxassetid://10734895076",["lucide-milestone"] = "rbxassetid://10734895310",["lucide-minimize"] = "rbxassetid://10734895698",["lucide-minimize-2"] = "rbxassetid://10734895530",["lucide-minus"] = "rbxassetid://10734896206",["lucide-minus-circle"] = "rbxassetid://10734895856",["lucide-minus-square"] = "rbxassetid://10734896029",["lucide-monitor"] = "rbxassetid://10734896881",["lucide-monitor-off"] = "rbxassetid://10734896360",["lucide-monitor-speaker"] = "rbxassetid://10734896512",["lucide-moon"] = "rbxassetid://10734897102",["lucide-more-horizontal"] = "rbxassetid://10734897250",["lucide-more-vertical"] = "rbxassetid://10734897387",["lucide-mountain"] = "rbxassetid://10734897956",["lucide-mountain-snow"] = "rbxassetid://10734897665",["lucide-mouse"] = "rbxassetid://10734898592",["lucide-mouse-pointer"] = "rbxassetid://10734898476",["lucide-mouse-pointer-2"] = "rbxassetid://10734898194",["lucide-mouse-pointer-click"] = "rbxassetid://10734898355",["lucide-move"] = "rbxassetid://10734900011",["lucide-move-3d"] = "rbxassetid://10734898756",["lucide-move-diagonal"] = "rbxassetid://10734899164",["lucide-move-diagonal-2"] = "rbxassetid://10734898934",["lucide-move-horizontal"] = "rbxassetid://10734899414",["lucide-move-vertical"] = "rbxassetid://10734899821",["lucide-music"] = "rbxassetid://10734905958",["lucide-music-2"] = "rbxassetid://10734900215",["lucide-music-3"] = "rbxassetid://10734905665",["lucide-music-4"] = "rbxassetid://10734905823",["lucide-navigation"] = "rbxassetid://10734906744",["lucide-navigation-2"] = "rbxassetid://10734906332",["lucide-navigation-2-off"] = "rbxassetid://10734906144",["lucide-navigation-off"] = "rbxassetid://10734906580",["lucide-network"] = "rbxassetid://10734906975",["lucide-newspaper"] = "rbxassetid://10734907168",["lucide-octagon"] = "rbxassetid://10734907361",["lucide-option"] = "rbxassetid://10734907649",["lucide-outdent"] = "rbxassetid://10734907933",["lucide-package"] = "rbxassetid://10734909540",["lucide-package-2"] = "rbxassetid://10734908151",["lucide-package-check"] = "rbxassetid://10734908384",["lucide-package-minus"] = "rbxassetid://10734908626",["lucide-package-open"] = "rbxassetid://10734908793",["lucide-package-plus"] = "rbxassetid://10734909016",["lucide-package-search"] = "rbxassetid://10734909196",["lucide-package-x"] = "rbxassetid://10734909375",["lucide-paint-bucket"] = "rbxassetid://10734909847",["lucide-paintbrush"] = "rbxassetid://10734910187",["lucide-paintbrush-2"] = "rbxassetid://10734910030",["lucide-palette"] = "rbxassetid://10734910430",["lucide-palmtree"] = "rbxassetid://10734910680",["lucide-paperclip"] = "rbxassetid://10734910927",["lucide-party-popper"] = "rbxassetid://10734918735",["lucide-pause"] = "rbxassetid://10734919336",["lucide-pause-circle"] = "rbxassetid://10735024209",["lucide-pause-octagon"] = "rbxassetid://10734919143",["lucide-pen-tool"] = "rbxassetid://10734919503",["lucide-pencil"] = "rbxassetid://10734919691",["lucide-percent"] = "rbxassetid://10734919919",["lucide-person-standing"] = "rbxassetid://10734920149",["lucide-phone"] = "rbxassetid://10734921524",["lucide-phone-call"] = "rbxassetid://10734920305",["lucide-phone-forwarded"] = "rbxassetid://10734920508",["lucide-phone-incoming"] = "rbxassetid://10734920694",["lucide-phone-missed"] = "rbxassetid://10734920845",["lucide-phone-off"] = "rbxassetid://10734921077",["lucide-phone-outgoing"] = "rbxassetid://10734921288",["lucide-pie-chart"] = "rbxassetid://10734921727",["lucide-piggy-bank"] = "rbxassetid://10734921935",["lucide-pin"] = "rbxassetid://10734922324",["lucide-pin-off"] = "rbxassetid://10734922180",["lucide-pipette"] = "rbxassetid://10734922497",["lucide-pizza"] = "rbxassetid://10734922774",["lucide-plane"] = "rbxassetid://10734922971",["lucide-play"] = "rbxassetid://10734923549",["lucide-play-circle"] = "rbxassetid://10734923214",["lucide-plus"] = "rbxassetid://10734924532",["lucide-plus-circle"] = "rbxassetid://10734923868",["lucide-plus-square"] = "rbxassetid://10734924219",["lucide-podcast"] = "rbxassetid://10734929553",["lucide-pointer"] = "rbxassetid://10734929723",["lucide-pound-sterling"] = "rbxassetid://10734929981",["lucide-power"] = "rbxassetid://10734930466",["lucide-power-off"] = "rbxassetid://10734930257",["lucide-printer"] = "rbxassetid://10734930632",["lucide-puzzle"] = "rbxassetid://10734930886",["lucide-quote"] = "rbxassetid://10734931234",["lucide-radio"] = "rbxassetid://10734931596",["lucide-radio-receiver"] = "rbxassetid://10734931402",["lucide-rectangle-horizontal"] = "rbxassetid://10734931777",["lucide-rectangle-vertical"] = "rbxassetid://10734932081",["lucide-recycle"] = "rbxassetid://10734932295",["lucide-redo"] = "rbxassetid://10734932822",["lucide-redo-2"] = "rbxassetid://10734932586",["lucide-refresh-ccw"] = "rbxassetid://10734933056",["lucide-refresh-cw"] = "rbxassetid://10734933222",["lucide-refrigerator"] = "rbxassetid://10734933465",["lucide-regex"] = "rbxassetid://10734933655",["lucide-repeat"] = "rbxassetid://10734933966",["lucide-repeat-1"] = "rbxassetid://10734933826",["lucide-reply"] = "rbxassetid://10734934252",["lucide-reply-all"] = "rbxassetid://10734934132",["lucide-rewind"] = "rbxassetid://10734934347",["lucide-rocket"] = "rbxassetid://10734934585",["lucide-rocking-chair"] = "rbxassetid://10734939942",["lucide-rotate-3d"] = "rbxassetid://10734940107",["lucide-rotate-ccw"] = "rbxassetid://10734940376",["lucide-rotate-cw"] = "rbxassetid://10734940654",["lucide-rss"] = "rbxassetid://10734940825",["lucide-ruler"] = "rbxassetid://10734941018",["lucide-russian-ruble"] = "rbxassetid://10734941199",["lucide-sailboat"] = "rbxassetid://10734941354",["lucide-save"] = "rbxassetid://10734941499",["lucide-scale"] = "rbxassetid://10734941912",["lucide-scale-3d"] = "rbxassetid://10734941739",["lucide-scaling"] = "rbxassetid://10734942072",["lucide-scan"] = "rbxassetid://10734942565",["lucide-scan-face"] = "rbxassetid://10734942198",["lucide-scan-line"] = "rbxassetid://10734942351",["lucide-scissors"] = "rbxassetid://10734942778",["lucide-screen-share"] = "rbxassetid://10734943193",["lucide-screen-share-off"] = "rbxassetid://10734942967",["lucide-scroll"] = "rbxassetid://10734943448",["lucide-search"] = "rbxassetid://10734943674",["lucide-send"] = "rbxassetid://10734943902",["lucide-separator-horizontal"] = "rbxassetid://10734944115",["lucide-separator-vertical"] = "rbxassetid://10734944326",["lucide-server"] = "rbxassetid://10734949856",["lucide-server-cog"] = "rbxassetid://10734944444",["lucide-server-crash"] = "rbxassetid://10734944554",["lucide-server-off"] = "rbxassetid://10734944668",["lucide-settings"] = "rbxassetid://10734950309",["lucide-settings-2"] = "rbxassetid://10734950020",["lucide-share"] = "rbxassetid://10734950813",["lucide-share-2"] = "rbxassetid://10734950553",["lucide-sheet"] = "rbxassetid://10734951038",["lucide-shield"] = "rbxassetid://10734951847",["lucide-shield-alert"] = "rbxassetid://10734951173",["lucide-shield-check"] = "rbxassetid://10734951367",["lucide-shield-close"] = "rbxassetid://10734951535",["lucide-shield-off"] = "rbxassetid://10734951684",["lucide-shirt"] = "rbxassetid://10734952036",["lucide-shopping-bag"] = "rbxassetid://10734952273",["lucide-shopping-cart"] = "rbxassetid://10734952479",["lucide-shovel"] = "rbxassetid://10734952773",["lucide-shower-head"] = "rbxassetid://10734952942",["lucide-shrink"] = "rbxassetid://10734953073",["lucide-shrub"] = "rbxassetid://10734953241",["lucide-shuffle"] = "rbxassetid://10734953451",["lucide-sidebar"] = "rbxassetid://10734954301",["lucide-sidebar-close"] = "rbxassetid://10734953715",["lucide-sidebar-open"] = "rbxassetid://10734954000",["lucide-sigma"] = "rbxassetid://10734954538",["lucide-signal"] = "rbxassetid://10734961133",["lucide-signal-high"] = "rbxassetid://10734954807",["lucide-signal-low"] = "rbxassetid://10734955080",["lucide-signal-medium"] = "rbxassetid://10734955336",["lucide-signal-zero"] = "rbxassetid://10734960878",["lucide-siren"] = "rbxassetid://10734961284",["lucide-skip-back"] = "rbxassetid://10734961526",["lucide-skip-forward"] = "rbxassetid://10734961809",["lucide-skull"] = "rbxassetid://10734962068",["lucide-slack"] = "rbxassetid://10734962339",["lucide-slash"] = "rbxassetid://10734962600",["lucide-slice"] = "rbxassetid://10734963024",["lucide-sliders"] = "rbxassetid://10734963400",["lucide-sliders-horizontal"] = "rbxassetid://10734963191",["lucide-smartphone"] = "rbxassetid://10734963940",["lucide-smartphone-charging"] = "rbxassetid://10734963671",["lucide-smile"] = "rbxassetid://10734964441",["lucide-smile-plus"] = "rbxassetid://10734964188",["lucide-snowflake"] = "rbxassetid://10734964600",["lucide-sofa"] = "rbxassetid://10734964852",["lucide-sort-asc"] = "rbxassetid://10734965115",["lucide-sort-desc"] = "rbxassetid://10734965287",["lucide-speaker"] = "rbxassetid://10734965419",["lucide-sprout"] = "rbxassetid://10734965572",["lucide-square"] = "rbxassetid://10734965702",["lucide-star"] = "rbxassetid://10734966248",["lucide-star-half"] = "rbxassetid://10734965897",["lucide-star-off"] = "rbxassetid://10734966097",["lucide-stethoscope"] = "rbxassetid://10734966384",["lucide-sticker"] = "rbxassetid://10734972234",["lucide-sticky-note"] = "rbxassetid://10734972463",["lucide-stop-circle"] = "rbxassetid://10734972621",["lucide-stretch-horizontal"] = "rbxassetid://10734972862",["lucide-stretch-vertical"] = "rbxassetid://10734973130",["lucide-strikethrough"] = "rbxassetid://10734973290",["lucide-subscript"] = "rbxassetid://10734973457",["lucide-sun"] = "rbxassetid://10734974297",["lucide-sun-dim"] = "rbxassetid://10734973645",["lucide-sun-medium"] = "rbxassetid://10734973778",["lucide-sun-moon"] = "rbxassetid://10734973999",["lucide-sun-snow"] = "rbxassetid://10734974130",["lucide-sunrise"] = "rbxassetid://10734974522",["lucide-sunset"] = "rbxassetid://10734974689",["lucide-superscript"] = "rbxassetid://10734974850",["lucide-swiss-franc"] = "rbxassetid://10734975024",["lucide-switch-camera"] = "rbxassetid://10734975214",["lucide-sword"] = "rbxassetid://10734975486",["lucide-swords"] = "rbxassetid://10734975692",["lucide-syringe"] = "rbxassetid://10734975932",["lucide-table"] = "rbxassetid://10734976230",["lucide-table-2"] = "rbxassetid://10734976097",["lucide-tablet"] = "rbxassetid://10734976394",["lucide-tag"] = "rbxassetid://10734976528",["lucide-tags"] = "rbxassetid://10734976739",["lucide-target"] = "rbxassetid://10734977012",["lucide-tent"] = "rbxassetid://10734981750",["lucide-terminal"] = "rbxassetid://10734982144",["lucide-terminal-square"] = "rbxassetid://10734981995",["lucide-text-cursor"] = "rbxassetid://10734982395",["lucide-text-cursor-input"] = "rbxassetid://10734982297",["lucide-thermometer"] = "rbxassetid://10734983134",["lucide-thermometer-snowflake"] = "rbxassetid://10734982571",["lucide-thermometer-sun"] = "rbxassetid://10734982771",["lucide-thumbs-down"] = "rbxassetid://10734983359",["lucide-thumbs-up"] = "rbxassetid://10734983629",["lucide-ticket"] = "rbxassetid://10734983868",["lucide-timer"] = "rbxassetid://10734984606",["lucide-timer-off"] = "rbxassetid://10734984138",["lucide-timer-reset"] = "rbxassetid://10734984355",["lucide-toggle-left"] = "rbxassetid://10734984834",["lucide-toggle-right"] = "rbxassetid://10734985040",["lucide-tornado"] = "rbxassetid://10734985247",["lucide-toy-brick"] = "rbxassetid://10747361919",["lucide-train"] = "rbxassetid://10747362105",["lucide-trash"] = "rbxassetid://10747362393",["lucide-trash-2"] = "rbxassetid://10747362241",["lucide-tree-deciduous"] = "rbxassetid://10747362534",["lucide-tree-pine"] = "rbxassetid://10747362748",["lucide-trees"] = "rbxassetid://10747363016",["lucide-trending-down"] = "rbxassetid://10747363205",["lucide-trending-up"] = "rbxassetid://10747363465",["lucide-triangle"] = "rbxassetid://10747363621",["lucide-trophy"] = "rbxassetid://10747363809",["lucide-truck"] = "rbxassetid://10747364031",["lucide-tv"] = "rbxassetid://10747364593",["lucide-tv-2"] = "rbxassetid://10747364302",["lucide-type"] = "rbxassetid://10747364761",["lucide-umbrella"] = "rbxassetid://10747364971",["lucide-underline"] = "rbxassetid://10747365191",["lucide-undo"] = "rbxassetid://10747365484",["lucide-undo-2"] = "rbxassetid://10747365359",["lucide-unlink"] = "rbxassetid://10747365771",["lucide-unlink-2"] = "rbxassetid://10747397871",["lucide-unlock"] = "rbxassetid://10747366027",["lucide-upload"] = "rbxassetid://10747366434",["lucide-upload-cloud"] = "rbxassetid://10747366266",["lucide-usb"] = "rbxassetid://10747366606",["lucide-user"] = "rbxassetid://10747373176",["lucide-user-check"] = "rbxassetid://10747371901",["lucide-user-cog"] = "rbxassetid://10747372167",["lucide-user-minus"] = "rbxassetid://10747372346",["lucide-user-plus"] = "rbxassetid://10747372702",["lucide-user-x"] = "rbxassetid://10747372992",["lucide-users"] = "rbxassetid://10747373426",["lucide-utensils"] = "rbxassetid://10747373821",["lucide-utensils-crossed"] = "rbxassetid://10747373629",["lucide-venetian-mask"] = "rbxassetid://10747374003",["lucide-verified"] = "rbxassetid://10747374131",["lucide-vibrate"] = "rbxassetid://10747374489",["lucide-vibrate-off"] = "rbxassetid://10747374269",["lucide-video"] = "rbxassetid://10747374938",["lucide-video-off"] = "rbxassetid://10747374721",["lucide-view"] = "rbxassetid://10747375132",["lucide-voicemail"] = "rbxassetid://10747375281",["lucide-volume"] = "rbxassetid://10747376008",["lucide-volume-1"] = "rbxassetid://10747375450",["lucide-volume-2"] = "rbxassetid://10747375679",["lucide-volume-x"] = "rbxassetid://10747375880",["lucide-wallet"] = "rbxassetid://10747376205",["lucide-wand"] = "rbxassetid://10747376565",["lucide-wand-2"] = "rbxassetid://10747376349",["lucide-watch"] = "rbxassetid://10747376722",["lucide-waves"] = "rbxassetid://10747376931",["lucide-webcam"] = "rbxassetid://10747381992",["lucide-wifi"] = "rbxassetid://10747382504",["lucide-wifi-off"] = "rbxassetid://10747382268",["lucide-wind"] = "rbxassetid://10747382750",["lucide-wrap-text"] = "rbxassetid://10747383065",["lucide-wrench"] = "rbxassetid://10747383470",["lucide-x"] = "rbxassetid://10747384394",["lucide-x-circle"] = "rbxassetid://10747383819",["lucide-x-octagon"] = "rbxassetid://10747384037",["lucide-x-square"] = "rbxassetid://10747384217",["lucide-zoom-in"] = "rbxassetid://10747384552",["lucide-zoom-out"] = "rbxassetid://10747384679"}
}
local g = setmetatable({}, {
	__index = function(d, e)
		return cloneref(game:GetService(e))
	end
})
local h = g.Players;
local i = g.UserInputService;
local j = g.TweenService;
local k = g.RunService;
local l = g.HttpService;
local m = g.TextService;
local n = g.Debris;
local o = h.LocalPlayer;
local p = o:GetMouse()
if k:IsStudio() then
	b.IsMobile = i.TouchEnabled and i.MouseEnabled == false
else
	b.IsMobile = table.find({
		Enum.Platform.IOS,
		Enum.Platform.Android
	}, i:GetPlatform())
end;
for q, r in pairs(b.Presets) do
	table.insert(b.ThemeList, q)
end;
table.sort(b.ThemeList)
b.gameInfo = {
	PlaceId = game.PlaceId,
	JobId = game.JobId,
	CreatorId = game.CreatorId
}
do
	function b:Create(s, t, u)
		local v, w = pcall(function()
			if typeof(s) ~= "string" then
				return "ObjectType must be a string, got " .. typeof(s)
			end;
			local x = Instance.new(s)
			for y, z in pairs(t) do
				x[y] = z
			end;
			if u then
				for e, A in pairs(u) do
					A.Parent = x
				end
			end;
			return x
		end)
		if v then
			return w
		else
			warn("Failed to render object: " .. tostring(s), tostring(w))
			return nil
		end
	end;
	function b:Connect(B, C)
		local D;
		local v, w = pcall(function()
			D = B:Connect(C)
		end)
		if v then
			table.insert(b.Connections, D)
			return D
		else
			warn(B, w)
			return nil
		end
	end
end;
do
	function c:Connect(E, C)
		local D;
		local v, w = pcall(function()
			D = E:Connect(C)
		end)
		if v then
			table.insert(b.Connections, D)
			return D
		else
			warn(E, w)
			return nil
		end
	end;
	function c:Thread(C, ...)
		local F = {
			...
		}
		local G;
		local v, w = pcall(function()
			coroutine.wrap(C)(unpack(F))
		end)
		if v then
			return w
		else
			warn(w)
		end
	end;
	function c:Decimal(z, H)
		if H ~= 0 then
			local I = 1 / H;
			return math.round(z * I) / I
		else
			return z
		end
	end;
	function c:GetIcon(J)
		local K = self.Icons["lucide-" .. J]
		if K then
			return K
		else
			warn("Icon not found: " .. J)
			return "rbxassetid://10747372992"
		end
	end;
	function c:Animation(x, t, L, ...)
		local F = {
			...
		}
		local M;
		local v, w = pcall(function()
			if b.Animation then
				M = j:Create(x, TweenInfo.new(L, unpack(F)), t)
				M:Play()
			else
				for y, z in pairs(t) do
					x[y] = z
				end
			end
		end)
		if v then
			return M
		else
			warn(w)
		end
	end;
	function c:LightenColor(N, O)
		local P, Q, R = Color3.toHSV(N)
		return Color3.fromHSV(P, Q, R + (1 - R) * O)
	end;
	function c:DarkenColor(N, O)
		local P, Q, R = Color3.toHSV(N)
		return Color3.fromHSV(P, Q, R - (1 - R) * O)
	end;
	function c:IsMouseOver(x)
		local v, w = pcall(function()
			local S = x.AbsolutePosition;
			local T = x.AbsoluteSize;
			local U = Vector2.new(p.X, p.Y)
			return U.X >= S.X and U.X <= S.X + T.X and (U.Y >= S.Y and U.Y <= S.Y + T.Y)
		end)
		if v then
			return w
		else
			warn("Error occurred while checking mouse position:", w)
			return false
		end
	end;
	function c:MakeDraggable(x, V)
		local W, X, Y;
		local function Z(_)
			local a0;
			a0 = _.Position - X;
			if a0 then
				local a1 = UDim2.new(Y.X.Scale, Y.X.Offset + a0.X, Y.Y.Scale, Y.Y.Offset + a0.Y)
				self:Animation(x, {
					Position = a1
				}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
			end
		end;
		b:Connect(V.InputBegan, function(_)
			if not b.Maximized and (_.UserInputType == Enum.UserInputType.MouseButton1 or _.UserInputType == Enum.UserInputType.Touch) then
				W = true;
				X = _.Position;
				Y = x.Position
			end
		end)
		b:Connect(V.InputEnded, function(_, a2)
			if _.UserInputType == Enum.UserInputType.MouseButton1 and not a2 then
				W = false
			end
		end)
		b:Connect(i.TouchEnded, function(_, a2)
			if W and _.UserInputType == Enum.UserInputType.Touch then
				W = false
			end
		end)
		b:Connect(i.InputChanged, function(_)
			if _.UserInputType == Enum.UserInputType.MouseMovement or _.UserInputType == Enum.UserInputType.Touch then
				if W then
					Z(_)
				end
			end
		end)
	end;
	function c:MakeResizeable(x, V)
		local W, X, a3;
		local a4 = 0.5;
		local function a5(_)
			local a6 = _.Position.X - X.X;
			local a7 = _.Position.Y - X.Y;
			if a6 or a7 then
				local a8 = UDim2.fromOffset(a3.X.Offset + a6, a3.Y.Offset + a7)
				local a9 = UDim2.fromOffset(math.max(470, a8.X.Offset), math.max(380, a8.Y.Offset))
				x.Size = a9
			end
		end;
		b:Connect(V.InputBegan, function(_)
			if not b.Maximized and (_.UserInputType == Enum.UserInputType.MouseButton1 or _.UserInputType == Enum.UserInputType.Touch) then
				W = true;
				X = _.Position;
				a3 = x.Size
			end
		end)
		b:Connect(V.InputEnded, function(_)
			if _.UserInputType == Enum.UserInputType.MouseButton1 or _.UserInputType == Enum.UserInputType.Touch then
				W = false
			end
		end)
		b:Connect(i.TouchEnded, function(_, a2)
			if W and _.UserInputType == Enum.UserInputType.Touch then
				W = false
			end
		end)
		b:Connect(i.InputChanged, function(_)
			if _.UserInputType == Enum.UserInputType.MouseMovement or _.UserInputType == Enum.UserInputType.Touch then
				if W then
					a5(_)
				end
			end
		end)
	end;
	function c:SetThemeProperty(aa, ab, z)
		for ac, ad in pairs(aa) do
			ad[ab] = z
		end
	end;
	function c:SetTheme(ae)
		local af = b.Presets[ae]
		b.Themes = af;
		if not af then
			warn("Theme not found:", ae)
			return
		end;
		function c:SetThemeProperty(ag, ah, ai)
			for ac, aj in pairs(ag) do
				aj[ah] = ai
			end
		end;
		c:SetThemeProperty(b.Storage.Background, "BackgroundColor3", af.BackgroundColor)
		c:SetThemeProperty(b.Storage.SelectedFrame, "BackgroundColor3", af.BackgroundColor)
		c:SetThemeProperty(b.Storage.Toggles, "BackgroundColor3", af.BackgroundColor)
		c:SetThemeProperty(b.Storage.ToggleImages, "ImageColor3", af.BackgroundColor)
		c:SetThemeProperty(b.Storage.Selected, "BackgroundColor3", af.BackgroundColor)
		c:SetThemeProperty(b.Storage.SliderValue, "BackgroundColor3", af.BackgroundColor)
		local ak = c:LightenColor(af.BackgroundColor, 0.05)
		local al = c:DarkenColor(af.BackgroundColor, 0.05)
		c:SetThemeProperty(b.Storage.BackgroundGradient, "Color", ColorSequence.new({
			ColorSequenceKeypoint.new(0, af.BackgroundColor),
			ColorSequenceKeypoint.new(1, ak)
		}))
		c:SetThemeProperty(b.Storage.Notification, "Color", ColorSequence.new({
			ColorSequenceKeypoint.new(0, af.BackgroundColor),
			ColorSequenceKeypoint.new(1, al)
		}))
		c:SetThemeProperty(b.Storage.DropdownGradient, "Color", ColorSequence.new({
			ColorSequenceKeypoint.new(0, af.BackgroundColor),
			ColorSequenceKeypoint.new(1, ak)
		}))
		c:SetThemeProperty(b.Storage.SliderImage, "ImageColor3", af.BackgroundColor)
	end
end;
function b:Window(t)
	local am = {
		Active = nil,
		Maximized = false,
		Visible = true
	}
	local t = t or {}
	local an = {
		Title = t.title or t.Title or "Window",
		SubTitle = t.subtitle or t.Subtitle or t.SubTitle or "",
		TabWidth = t.tabwidth or t.TabWidth or 160,
		Size = t.size or t.Size or self.IsMobile and UDim2.fromOffset(464, 368) or UDim2.fromOffset(580, 460),
		MinimizeKey = t.minimizekey or t.MinimizeKey or Enum.KeyCode.Home,
		Theme = t.theme or t.Theme or "Default",
		ExitCallback = t.exitcallback or t.ExitCallback or function()
		end,
		Transparency = t.transparency or t.Transparency or 0.85,
		FontFace = t.font or t.Font or nil
	}
	b.Settings.FontFace = an.FontFace;
	self.Settings.Keybind = an.MinimizeKey;
	self.Settings.Transparency = an.Transparency;
	self.Theme = an.Theme;
	local ao = o:WaitForChild("PlayerGui", 1)
	local ap;
	local aq = 0;
	for e, am in pairs(ao:GetChildren()) do
		if am:IsA("ScreenGui") then
			ap = am.DisplayOrder;
			if ap > aq then
				aq = ap
			end
		end
	end;
	local ar = self:Create("ScreenGui", {
		Name = "NEXT",
		Parent = ao,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		ResetOnSpawn = false,
		DisplayOrder = aq + 1,
		IgnoreGuiInset = true
	})
	function b:Destroy()
		for e, D in pairs(self.Connections) do
			D:Disconnect()
		end;
		ar:Destroy()
	end;
	local as = self:Create("Frame", {
		Name = "MainFrame",
		Parent = ar,
		Visible = true,
		Size = an.Size,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 1,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	})
	function b:Toggle()
		as.Visible = not as.Visible;
		am.Visible = not am.Visible
	end;
	b:Connect(i.InputBegan, function(_, a2)
		if _.KeyCode == self.Settings.Keybind and not a2 then
			b:Toggle()
		end
	end)
	local at = Instance.new("Frame")
	at.Name = "NotificationHolder"
	at.AnchorPoint = Vector2.new(1, 1)
	at.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	at.BackgroundTransparency = 1;
	at.BorderColor3 = Color3.fromRGB(0, 0, 0)
	at.BorderSizePixel = 0;
	at.Position = UDim2.new(1, -30, 1, -30)
	at.Size = UDim2.new(0, 310, 1, -30)
	at.Parent = ar;
	local au = Instance.new("UIListLayout")
	au.Name = "UIListLayout"
	au.Padding = UDim.new(0, 20)
	au.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	au.SortOrder = Enum.SortOrder.LayoutOrder;
	au.VerticalAlignment = Enum.VerticalAlignment.Bottom;
	au.Parent = at;
	function b:Notify(t)
		local av = {
			Closed = false
		}
		local t = t or {}
		local an = {
			Title = t.title or t.Title or "NEXT",
			Content = t.content or t.Content or "This is a notification!",
			SubContent = t.subcontent or t.Subcontent or t.SubContent or false,
			Duration = t.duration or t.Duration or 3
		}
		local aw = Instance.new("Frame")
		aw.Name = "NotificationObject"
		aw.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aw.BackgroundTransparency = 1;
		aw.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aw.BorderSizePixel = 0;
		aw.Size = an.SubContent and UDim2.new(1, 0, 0, 89) or UDim2.new(1, 0, 0, 72)
		aw.Position = UDim2.new(0, 0, 1, 0)
		local ax = Instance.new("Frame")
		ax.Name = "NotificationObjectFrame"
		ax.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ax.BackgroundTransparency = 1;
		ax.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ax.BorderSizePixel = 0;
		ax.Size = UDim2.fromScale(1, 1)
		local ay = Instance.new("Frame")
		ay.Name = "Notification"
		ay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ay.BackgroundTransparency = 0.9;
		ay.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ay.BorderSizePixel = 0;
		ay.Size = UDim2.fromScale(1, 1)
		local az = Instance.new("ImageLabel")
		az.Name = "NotifyShadow"
		az.Image = "rbxassetid://8992230677"
		az.ImageColor3 = Color3.fromRGB(0, 0, 0)
		az.ImageTransparency = 0.7;
		az.ScaleType = Enum.ScaleType.Slice;
		az.SliceCenter = Rect.new(99, 99, 99, 99)
		az.AnchorPoint = Vector2.new(0.5, 0.5)
		az.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		az.BackgroundTransparency = 1;
		az.BorderColor3 = Color3.fromRGB(0, 0, 0)
		az.BorderSizePixel = 0;
		az.Position = UDim2.fromScale(0.5, 0.5)
		az.Size = UDim2.new(1, 120, 1, 116)
		az.Parent = ay;
		local aA = Instance.new("UICorner")
		aA.Name = "UICorner"
		aA.Parent = ay;
		local aB = Instance.new("Frame")
		aB.Name = "Background"
		aB.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		aB.BackgroundTransparency = 0.45;
		aB.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aB.BorderSizePixel = 0;
		aB.Size = UDim2.fromScale(1, 1)
		local aC = Instance.new("UICorner")
		aC.Name = "UICorner"
		aC.Parent = aB;
		aB.Parent = ay;
		local aD = Instance.new("Frame")
		aD.Name = "Gradient"
		aD.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		aD.BackgroundTransparency = 0.4;
		aD.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aD.BorderSizePixel = 0;
		aD.Size = UDim2.fromScale(1, 1)
		local aE = Instance.new("UICorner")
		aE.Name = "UICorner"
		aE.Parent = aD;
		local aF = Instance.new("UIGradient")
		aF.Name = "UIGradient"
		aF.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, b.Themes.BackgroundColor),
			ColorSequenceKeypoint.new(1, b.Themes.BackgroundColor)
		})
		aF.Rotation = 90;
		aF.Parent = aD;
		table.insert(b.Storage.Notification, aF)
		aD.Parent = ay;
		ay.Parent = ax;
		local aG = Instance.new("TextLabel")
		aG.Name = "NotifyTitle"
		aG.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json")
		aG.RichText = true;
		aG.Text = "NEXT"
		aG.TextColor3 = Color3.fromRGB(240, 240, 240)
		aG.TextSize = 13;
		aG.TextWrapped = true;
		aG.TextXAlignment = Enum.TextXAlignment.Left;
		aG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aG.BackgroundTransparency = 1;
		aG.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aG.Position = UDim2.fromOffset(14, 17)
		aG.Size = UDim2.new(1, -12, 0, 12)
		aG.Parent = ax;
		local aH = Instance.new("TextButton")
		aH.Name = "CloseObjectButton"
		aH.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json")
		aH.Text = ""
		aH.TextColor3 = Color3.fromRGB(0, 0, 0)
		aH.TextSize = 14;
		aH.AutoButtonColor = false;
		aH.AnchorPoint = Vector2.new(1, 0)
		aH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aH.BackgroundTransparency = 1;
		aH.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aH.Position = UDim2.new(1, -14, 0, 13)
		aH.Size = UDim2.fromOffset(20, 20)
		local aI = Instance.new("ImageLabel")
		aI.Name = "CloseObjectImage"
		aI.Image = "rbxassetid://9886659671"
		aI.ImageColor3 = Color3.fromRGB(240, 240, 240)
		aI.AnchorPoint = Vector2.new(0.5, 0.5)
		aI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aI.BackgroundTransparency = 1;
		aI.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aI.BorderSizePixel = 0;
		aI.Position = UDim2.fromScale(0.5, 0.5)
		aI.Size = UDim2.fromOffset(16, 16)
		aI.Parent = aH;
		aH.Parent = ax;
		local aJ = Instance.new("Frame")
		aJ.Name = "NotificationFrame"
		aJ.AutomaticSize = Enum.AutomaticSize.Y;
		aJ.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aJ.BackgroundTransparency = 1;
		aJ.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aJ.BorderSizePixel = 0;
		aJ.Position = UDim2.fromOffset(14, 40)
		aJ.Size = UDim2.new(1, -28, 0, 0)
		local aK = Instance.new("UIListLayout")
		aK.Name = "UIListLayout"
		aK.Padding = UDim.new(0, 3)
		aK.SortOrder = Enum.SortOrder.LayoutOrder;
		aK.VerticalAlignment = Enum.VerticalAlignment.Center;
		aK.Parent = aJ;
		local aL = Instance.new("TextLabel")
		aL.Name = "ContentText"
		aL.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json")
		aL.Text = an.Content;
		aL.TextColor3 = Color3.fromRGB(240, 240, 240)
		aL.TextSize = 14;
		aL.TextWrapped = true;
		aL.TextXAlignment = Enum.TextXAlignment.Left;
		aL.AutomaticSize = Enum.AutomaticSize.Y;
		aL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aL.BackgroundTransparency = 1;
		aL.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aL.Size = UDim2.new(1, 0, 0, 14)
		aL.Parent = aJ;
		local aM = Instance.new("TextLabel")
		aM.Name = "SubContent"
		aM.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json")
		aM.Text = an.SubContent and an.SubContent or ""
		aM.TextColor3 = Color3.fromRGB(170, 170, 170)
		aM.TextSize = 14;
		aM.TextWrapped = true;
		aM.TextXAlignment = Enum.TextXAlignment.Left;
		aM.AutomaticSize = Enum.AutomaticSize.Y;
		aM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		aM.BackgroundTransparency = 1;
		aM.BorderColor3 = Color3.fromRGB(0, 0, 0)
		aM.Size = UDim2.new(1, 0, 0, 14)
		aM.Visible = an.SubContent and true or false;
		aM.Parent = aJ;
		local aN = Instance.new("UIPadding")
		aN.Name = "UIPadding"
		aN.PaddingBottom = UDim.new(0, 3)
		aN.PaddingLeft = UDim.new(0, 0)
		aN.PaddingRight = UDim.new(0, 0)
		aN.PaddingTop = UDim.new(0, 0)
		aN.Parent = aJ;
		aJ.Parent = ax;
		ax.Parent = aw;
		aw.Parent = at;
		local function Z()
			local function aO(aP)
				local aQ = aP:gsub("[^%w]", "")
				return #aQ
			end;
			local aR = math.ceil(aO(an.Content) / 31)
			local aS = an.SubContent and math.ceil(aO(an.SubContent) / 31) or 0;
			local aT = aR + aS;
			local aU = aT * 17 + 55;
			aw.Size = UDim2.new(1, 0, 0, aU)
		end;
		Z()
		b:Connect(aH.Activated, function()
			av.Closed = true;
			n:AddItem(aw, 0.1)
		end)
		c:Animation(aw, {
			Position = UDim2.new(0, 0, 1, 0)
		}, self.AnimationSpeed * 2, self.EasingStyle.Quad, self.EasingDirection.Out)
		task.delay(an.Duration, function()
			if av.Closed then
				return
			end;
			c:Animation(aw, {
				Visible = false
			}, self.AnimationSpeed * 2, self.EasingStyle.Quad, self.EasingDirection.Out)
			n:AddItem(aw, 0.1)
		end)
		return av
	end;
	local aV = self:Create("Frame", {
		Name = "TransparentFrame",
		Parent = as,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = b.Settings.Transparency,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		})
	})
	function c:SetBackgroundTransparency(aW)
		b.Settings.Transparency = aW;
		aV.BackgroundTransparency = aW
	end;
	local aB = self:Create("Frame", {
		Name = "Background",
		Parent = aV,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 0.3,
		BackgroundColor3 = self.Themes.BackgroundColor
	})
	self:Create("UICorner", {
		CornerRadius = UDim.new(0, 8),
		Parent = aB
	})
	table.insert(b.Storage.Background, aB)
	local aX = self:Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, self.Themes.BackgroundColor),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
		}),
		Rotation = 90,
		Parent = aB
	})
	table.insert(b.Storage.BackgroundGradient, aX)
	local aY = self:Create("Frame", {
		Name = "AccentFrame",
		Parent = aV,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 0.3,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		})
	})
	local aZ = self:Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, self.Themes.AccentColor),
			ColorSequenceKeypoint.new(1, self.Themes.AccentColor)
		}),
		Rotation = 90,
		Parent = aY
	})
	local a_ = self:Create("ImageLabel", {
		Image = "rbxassetid://9968344227",
		ImageTransparency = 0.8999999761581421,
		ScaleType = Enum.ScaleType.Tile,
		TileSize = UDim2.new(0, 128, 0, 128),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		Visible = true,
		Name = "MainFrameShadow",
		Parent = aV
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		})
	})
	local b0 = self:Create("ImageLabel", {
		Name = "MainFrameShadow2",
		Parent = aV,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Image = "rbxassetid://9968344105",
		ImageTransparency = 0.98,
		ScaleType = Enum.ScaleType.Tile,
		TileSize = UDim2.new(0, 128, 0, 128)
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		})
	})
	local b1 = self:Create("Frame", {
		Name = "BorderFrame",
		Parent = aV,
		Visible = true,
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 1,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 8)
		}),
		self:Create("UIStroke", {
			Transparency = 0.5,
			Color = Color3.fromRGB(0, 0, 0),
			LineJoinMode = Enum.LineJoinMode.Round
		})
	})
	b:Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		Visible = true,
		Parent = aV
	})
	local b2 = self:Create("ImageLabel", {
		Image = "rbxassetid://8992230677",
		ImageColor3 = Color3.fromRGB(0, 0, 0),
		ImageTransparency = 0.699999988079071,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(99, 99, 99, 99),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(1, 120, 1, 116),
		Visible = true,
		Name = "Shadow",
		Parent = aV
	})
	local b3 = self:Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(1, -20, 1, -20),
		Size = UDim2.new(0, 20, 0, 20),
		Visible = true,
		Name = "ResizeTouch",
		Parent = as
	})
	c:MakeResizeable(as, b3)
	local b4 = self:Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 42),
		Visible = true,
		Name = "NavbarFrame",
		Parent = as
	})
	c:MakeDraggable(as, b4)
	local b5 = self:Create("TextButton", {
		FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold),
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AnchorPoint = Vector2.new(1, 0),
		BackgroundColor3 = Color3.fromRGB(240, 240, 240),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Position = UDim2.new(1, -4, 0, 4),
		Size = UDim2.new(0, 34, 1, -8),
		Visible = true,
		Name = "ExitButton",
		Parent = b4
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 7)
		}),
		self:Create("ImageLabel", {
			Image = "rbxassetid://9886659671",
			ImageColor3 = Color3.fromRGB(240, 240, 240),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 16, 0, 16),
			Visible = true,
			Name = "Icon"
		})
	})
	local b6 = self:Create("TextButton", {
		FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AnchorPoint = Vector2.new(1, 0),
		BackgroundColor3 = Color3.fromRGB(240, 240, 240),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Position = UDim2.new(1, -40, 0, 4),
		Size = UDim2.new(0, 34, 1, -8),
		Visible = true,
		Name = "MaximizeButton",
		Parent = b4
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 7)
		})
	})
	local b7 = self:Create("ImageLabel", {
		Image = "rbxassetid://9886659406",
		ImageColor3 = Color3.fromRGB(240, 240, 240),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(0, 16, 0, 16),
		Visible = true,
		Name = "Icon",
		Parent = b6
	})
	local b8 = self:Create("TextButton", {
		FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AnchorPoint = Vector2.new(1, 0),
		BackgroundColor3 = Color3.fromRGB(240, 240, 240),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Position = UDim2.new(1, -80, 0, 4),
		Size = UDim2.new(0, 34, 1, -8),
		Visible = true,
		Name = "MinimizeButton",
		Parent = b4
	}, {
		self:Create("UICorner", {
			CornerRadius = UDim.new(0, 7)
		}),
		self:Create("ImageLabel", {
			Image = "rbxassetid://9886659276",
			ImageColor3 = Color3.fromRGB(240, 240, 240),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 16, 0, 16),
			Visible = true,
			Name = "Icon"
		})
	})
	local b9 = b:Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 16, 0, 0),
		Size = UDim2.new(1, -16, 1, 0),
		Visible = true,
		Name = "NavbarTitle",
		Parent = b4
	}, {
		b:Create("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 5)
		})
	})
	local ba = b:Create("TextLabel", {
		FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
		RichText = true,
		Text = an.Title,
		TextColor3 = Color3.fromRGB(240, 240, 240),
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Size = UDim2.new(0, 0, 1, 0),
		Visible = true,
		Parent = b9
	})
	local bb = b:Create("TextLabel", {
		FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
		RichText = true,
		Text = an.SubTitle,
		TextColor3 = Color3.fromRGB(240, 240, 240),
		TextSize = 12,
		TextTransparency = 0.4000000059604645,
		TextXAlignment = Enum.TextXAlignment.Left,
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Size = UDim2.new(0, 0, 1, 0),
		Visible = true,
		Parent = b9
	})
	local bc = b:Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(75, 75, 75),
		BackgroundTransparency = 0.5,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 1, 0),
		Size = UDim2.new(1, 0, 0, 1),
		Visible = true,
		Name = "UnderlineFrame",
		Parent = b4
	})
	local bd = b:Create("TextLabel", {
		RichText = true,
		Visible = false,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		FontFace = b.Settings.FontFace or Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
		TextSize = 28,
		Size = UDim2.new(1, -16, 0, 28),
		TextColor3 = Color3.fromRGB(240, 240, 240),
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Text = "Main",
		Position = UDim2.new(0, 186, 0, 56),
		BackgroundTransparency = 1,
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = as
	})
	local be = b:Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		ClipsDescendants = true,
		Position = UDim2.new(0, 12, 0, 54),
		Size = UDim2.new(0, an.TabWidth, 1, -54),
		Visible = true,
		Name = "SidebarHolder",
		Parent = as
	})
	local bf = b:Create("ScrollingFrame", {
		CanvasSize = UDim2.new(0, 0, 0, 0),
		AutomaticCanvasSize = Enum.AutomaticSize.XY,
		ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0),
		ScrollBarImageTransparency = 1,
		ScrollBarThickness = 0,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		Visible = true,
		Name = "SidebarFrame",
		Parent = be
	}, {
		b:Create("UIListLayout", {
			Padding = UDim.new(0, 4)
		})
	})
	local bg = b:Create("Frame", {
		AnchorPoint = Vector2.new(0, 0.5),
		BackgroundColor3 = b.Themes.BackgroundColor,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0, 17),
		Size = UDim2.new(0, 4, 0, 16),
		Visible = false,
		Name = "SelectedFrame",
		Parent = be
	})
	b:Create("UICorner", {
		CornerRadius = UDim.new(0, 2),
		Parent = bg
	})
	table.insert(b.Storage.SelectedFrame, bg)
	local bh = b:Create("CanvasGroup", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 186, 0, 94),
		Size = UDim2.new(1, -192, 1, -102),
		Visible = true,
		Name = "ObjectElements",
		Parent = as
	})
	b.Maximized = false;
	c:Thread(function()
		b:Connect(b6.Activated, function()
			b.Maximized = not b.Maximized;
			b7.Image = b.Maximized and 'rbxassetid://9886659001' or 'rbxassetid://9886659406'
			c:Animation(as, {
				Size = b.Maximized and UDim2.new(1, 0, 1, 0) or an.Size
			}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
			c:Animation(as, {
				Position = b.Maximized and UDim2.new(0.5, 0, 0.5, 0) or UDim2.new(0.5, 0, 0.5, 0)
			}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
		end)
		b:Connect(b5.Activated, function()
			b:Destroy()
			pcall(an.ExitCallback)
		end)
		b:Connect(b8.Activated, function()
			b:Toggle()
			b:Notify({
				Title = "Notification",
				Content = "Window minimized.\nPress the button " .. self.Settings.Keybind.Name .. " again to open it.",
				Duration = 15
			})
		end)
	end)
	function am:AddTab(t)
		local bi = {}
		local t = t or {}
		local an = {
			Title = t.title or t.Title or "Tab",
			Description = t.description or t.Description or t.Desc or t.Desc or t.title or t.Title or "Tab",
			Icon = t.icon or t.Icon or ""
		}
		local bj = b:Create("TextButton", {
			FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
			Text = "",
			TextColor3 = Color3.fromRGB(0, 0, 0),
			TextSize = 14,
			BackgroundColor3 = Color3.fromRGB(120, 120, 120),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Size = UDim2.new(1, 0, 0, 34),
			Visible = true,
			Name = "SidebarOptionButton",
			Parent = bf
		}, {
			b:Create("UICorner", {
				CornerRadius = UDim.new(0, 6)
			})
		})
		local bk = b:Create("ScrollingFrame", {
			Name = "ObjectScrollingFrame",
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			BottomImage = "rbxassetid://6889812791",
			CanvasSize = UDim2.fromOffset(0, 527),
			MidImage = "rbxassetid://6889812721",
			ScrollBarImageTransparency = 0.95,
			ScrollBarThickness = 3,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			TopImage = "rbxassetid://6276641225",
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			Visible = false,
			Parent = bh
		}, {
			b:Create("UIListLayout", {
				Padding = UDim.new(0, 5),
				SortOrder = Enum.SortOrder.LayoutOrder
			}),
			b:Create("UIPadding", {
				PaddingBottom = UDim.new(0, 1),
				PaddingLeft = UDim.new(0, 1),
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 1)
			})
		})
		if an.Icon ~= "" then
			local bl = c:GetIcon(an.Icon)
			local bm = b:Create("ImageLabel", {
				Image = bl,
				ImageColor3 = Color3.fromRGB(240, 240, 240),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 8, 0.5, 0),
				Size = UDim2.new(0, 16, 0, 16),
				Visible = true,
				Parent = bj
			})
		end;
		local bn = b:Create("TextLabel", {
			FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
			RichText = true,
			Text = an.Title,
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			Position = UDim2.new(0, an.Icon ~= "" and 30 or 12, 0.5, 0),
			Size = UDim2.new(1, -12, 1, 0),
			Visible = true,
			Parent = bj
		})
		function bi:Select()
			if am.Active ~= bi then
				am.Active = bi;
				local bo = UDim2.new(0, 0, 0, bj.AbsolutePosition.Y - bf.AbsolutePosition.Y + 17)
				c:Thread(function()
					for q, r in next, bf:GetChildren() do
						if r:IsA("TextButton") then
							r.BackgroundTransparency = 1
						end
					end;
					for q, r in pairs(bh:GetChildren()) do
						if r:IsA("ScrollingFrame") then
							r.Visible = false
						end
					end;
					c:Animation(bg, {
						Position = bo,
						Visible = true
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(bj, {
						BackgroundTransparency = 0.8
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(bk, {
						Visible = true
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					bd.Visible = true;
					bd.Text = an.Description
				end)
			end
		end;
		c:Thread(function()
			b:Connect(bj.Activated, function()
				bi:Select()
			end)
		end)
		function am:Dialog(t)
			local bp = {}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Dialog",
				Content = t.content or t.Content or "This is a dialog.",
				Buttons = t.buttons or t.Buttons or {
					Title = "Confirm",
					Callback = function()
					end
				},
				{
					Title = "Cancel",
					Callback = function()
					end
				}
			}
			local bq = Instance.new("TextButton")
			bq.Name = "DialogHolder"
			bq.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json")
			bq.Text = ""
			bq.TextColor3 = Color3.fromRGB(0, 0, 0)
			bq.TextSize = 14;
			bq.AutoButtonColor = false;
			bq.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			bq.BackgroundTransparency = 0.75;
			bq.BorderColor3 = Color3.fromRGB(0, 0, 0)
			bq.Size = UDim2.fromScale(1, 1)
			bq.Parent = as;
			local aA = Instance.new("UICorner")
			aA.Name = "UICorner"
			aA.Parent = bq;
			local br = Instance.new("Frame")
			br.Name = "DialogHolderFrame"
			br.AnchorPoint = Vector2.new(0.5, 0.5)
			br.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			br.BorderColor3 = Color3.fromRGB(0, 0, 0)
			br.BorderSizePixel = 0;
			br.Position = UDim2.fromScale(0.5, 0.5)
			br.Size = UDim2.fromOffset(141, 165)
			local aC = Instance.new("UICorner")
			aC.Name = "UICorner"
			aC.Parent = br;
			local bs = Instance.new("UIScale")
			bs.Name = "UIScale"
			bs.Parent = br;
			local bt = Instance.new("UIStroke")
			bt.Name = "UIStroke"
			bt.Color = Color3.fromRGB(70, 70, 70)
			bt.Thickness = 0;
			bt.Transparency = 0.5;
			bt.Parent = br;
			local bu = Instance.new("Frame")
			bu.Name = "DialogHolder"
			bu.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			bu.BorderColor3 = Color3.fromRGB(0, 0, 0)
			bu.BorderSizePixel = 0;
			bu.Position = UDim2.new(0, 0, 1, -70)
			bu.Size = UDim2.new(1, 0, 0, 70)
			local bp = Instance.new("Frame")
			bp.Name = "Dialog"
			bp.AnchorPoint = Vector2.new(0.5, 0.5)
			bp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			bp.BackgroundTransparency = 1;
			bp.BorderColor3 = Color3.fromRGB(0, 0, 0)
			bp.BorderSizePixel = 0;
			bp.Position = UDim2.fromScale(0.5, 0.5)
			bp.Size = UDim2.new(1, -40, 1, -40)
			local au = Instance.new("UIListLayout")
			au.Name = "UIListLayout"
			au.Padding = UDim.new(0, 10)
			au.FillDirection = Enum.FillDirection.Horizontal;
			au.HorizontalAlignment = Enum.HorizontalAlignment.Center;
			au.SortOrder = Enum.SortOrder.LayoutOrder;
			au.Parent = bp;
			local bv = Instance.new("Frame")
			bv.Name = "DialogUnderline"
			bv.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			bv.BorderColor3 = Color3.fromRGB(0, 0, 0)
			bv.BorderSizePixel = 0;
			bv.Size = UDim2.new(1, 0, 0, 1)
			bv.Parent = bu;
			local bw = Instance.new("UICorner")
			bw.Name = "UICorner"
			bw.Parent = bu;
			local bx = Instance.new("UIGradient")
			bx.Name = "UIGradient"
			bx.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, b.Themes.BackgroundColor),
				ColorSequenceKeypoint.new(1, b.Themes.BackgroundColor)
			})
			table.insert(b.Storage.Notification, bx)
			bx.Parent = bu;
			bu.Parent = br;
			local by = Instance.new("TextLabel")
			by.Name = "DialogContent"
			by.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json")
			by.Text = an.Content;
			by.TextColor3 = Color3.fromRGB(240, 240, 240)
			by.TextSize = 14;
			by.TextXAlignment = Enum.TextXAlignment.Left;
			by.TextYAlignment = Enum.TextYAlignment.Top;
			by.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			by.BackgroundTransparency = 1;
			by.BorderColor3 = Color3.fromRGB(0, 0, 0)
			by.Position = UDim2.fromOffset(20, 60)
			by.Size = UDim2.new(1, -40, 1, 0)
			by.Parent = br;
			local bz = Instance.new("TextLabel")
			bz.Name = "DialogTite"
			bz.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
			bz.Text = tostring(an.Title)
			bz.TextColor3 = Color3.fromRGB(240, 240, 240)
			bz.TextSize = 22;
			bz.TextXAlignment = Enum.TextXAlignment.Left;
			bz.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			bz.BackgroundTransparency = 1;
			bz.BorderColor3 = Color3.fromRGB(0, 0, 0)
			bz.Position = UDim2.fromOffset(20, 25)
			bz.Size = UDim2.new(1, 0, 0, 22)
			bz.Parent = br;
			local bA = Instance.new("UIGradient")
			bA.Name = "UIGradient"
			bA.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, b.Themes.BackgroundColor),
				ColorSequenceKeypoint.new(1, b.Themes.BackgroundColor)
			})
			bA.Parent = br;
			table.insert(b.Storage.Notification, bA)
			local bB = Instance.new("UISizeConstraint")
			bB.Name = "UISizeConstraint"
			bB.MaxSize = Vector2.new(620, math.huge)
			bB.MinSize = Vector2.new(300, 165)
			bB.Parent = br;
			br.Parent = bq;
			for q, r in pairs(an.Buttons) do
				local bC = Instance.new("TextButton")
				bC.Name = "DialogOption"
				bC.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json")
				bC.Text = ""
				bC.TextColor3 = Color3.fromRGB(0, 0, 0)
				bC.TextSize = 14;
				bC.AutoButtonColor = false;
				bC.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				bC.BorderColor3 = Color3.fromRGB(0, 0, 0)
				bC.Size = UDim2.new(0.5, -5, 0, 32)
				local aE = Instance.new("UICorner")
				aE.Name = "UICorner"
				aE.CornerRadius = UDim.new(0, 4)
				aE.Parent = bC;
				local bD = Instance.new("UIStroke")
				bD.Name = "UIStroke"
				bD.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
				bD.Color = Color3.fromRGB(30, 30, 30)
				bD.Transparency = 0.65;
				bD.Parent = bC;
				local bE = Instance.new("TextLabel")
				bE.Name = "DialogTitle"
				bE.FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json")
				bE.Text = r.Title;
				bE.TextColor3 = Color3.fromRGB(240, 240, 240)
				bE.TextSize = 14;
				bE.TextWrapped = true;
				bE.AutomaticSize = Enum.AutomaticSize.Y;
				bE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				bE.BackgroundTransparency = 1;
				bE.BorderColor3 = Color3.fromRGB(0, 0, 0)
				bE.Size = UDim2.fromScale(1, 1)
				bE.Parent = bC;
				local aF = Instance.new("UIGradient")
				aF.Name = "UIGradient"
				aF.Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, b.Themes.BackgroundColor),
					ColorSequenceKeypoint.new(1, b.Themes.BackgroundColor)
				})
				table.insert(b.Storage.BackgroundGradient, aF)
				aF.Parent = bC;
				bC.Parent = bp;
				bp.Parent = bu;
				b:Connect(bC.Activated, function()
					bq:Destroy()
					if r.Callback then
						r.Callback()
					end
				end)
			end;
			return bp
		end;
		function bi:AddParagraph(t)
			local bF = {}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Paragraph",
				Content = t.content or t.Content or t.desc or t.Desc or "This is a paragraph.",
				Sections = t.sections or t.Sections or false
			}
			local bG = an.Sections and an.Sections or bk;
			local bH = b:Create("TextButton", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				Text = "",
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.8700000047683716,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 0),
				Visible = true,
				Name = "ParagraphHolder",
				Parent = bG
			}, {
				b:Create("UICorner", {
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})
			local bI = b:Create("TextButton", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Visible = true,
				Text = "",
				Name = "ParagraphFrame",
				Parent = bH
			}, {
				b:Create("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				b:Create("UIPadding", {
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})
			local bJ = b:Create("TextLabel", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
				Name = "ParagraphTitle",
				Parent = bI
			})
			local bK = b:Create("TextLabel", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
				Text = an.Content,
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
				Name = "ParagraphDesc",
				Parent = bI
			})
			local bL = bK.TextBounds.Y;
			local bM = bJ.TextBounds.Y;
			bJ.Size = UDim2.new(1, 0, 0, bM)
			bK.Size = UDim2.new(1, 0, 0, bL)
			function bF:Update()
				local bL = bK.TextBounds.Y;
				local bM = bJ.TextBounds.Y;
				bJ.Size = UDim2.new(1, 0, 0, bM)
				bK.Size = UDim2.new(1, 0, 0, bL)
			end;
			function bF:Set(t)
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Paragraph",
					Content = t.content or t.Content or t.desc or t.Desc or "This is a paragraph."
				}
				bJ.Text = an.Title;
				bK.Text = an.Content;
				bF:Update()
			end;
			function bF:SetTitle(bN)
				bJ.Text = bN;
				bF:Update()
			end;
			function bF:SetDesc(bN)
				bK.Text = bN;
				bF:Update()
			end;
			return bF
		end;
		function bi:AddButton(t)
			local bO = {}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Button",
				Description = t.description or t.Description or t.desc or t.Desc or "",
				Callback = t.callback or t.Callback or function()
				end,
				Sections = t.sections or t.Sections or false
			}
			local bP = b:Create("TextButton", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.8700000047683716,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 0),
				Visible = true,
				Name = "ButtonHolder",
				Parent = an.Sections and an.Sections or bk
			}, {
				b:Create("UICorner", {
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})
			local bQ = b:Create("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Visible = true,
				Name = "ButtonFrame",
				Parent = bP
			}, {
				b:Create("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				b:Create("UIPadding", {
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})
			local bR = b:Create("TextLabel", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
				Name = "ButtonTitle",
				Parent = bQ
			})
			local bS = b:Create("TextLabel", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
				Text = an.Description,
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
				Name = "ButtonDesc",
				Parent = bQ
			})
			local bT = b:Create("ImageLabel", {
				Image = "rbxassetid://10709791437",
				ImageColor3 = Color3.fromRGB(240, 240, 240),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.new(0, 16, 0, 16),
				Visible = true,
				Name = "ButtonImage",
				Parent = bP
			})
			local bL = bS.TextBounds.Y;
			local bM = bR.TextBounds.Y;
			bR.Size = UDim2.new(1, 0, 0, bM)
			bS.Size = UDim2.new(1, 0, 0, bL)
			function bO:Update()
				local bL = bS.TextBounds.Y;
				local bM = bR.TextBounds.Y;
				bR.Size = UDim2.new(1, 0, 0, bM)
				bS.Size = UDim2.new(1, 0, 0, bL)
			end;
			function bO:Set(t)
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Button",
					Description = t.description or t.Description or t.desc or t.Desc or "",
					Callback = t.callback or t.Callback or function()
					end
				}
				bR.Text = an.Title;
				bS.Text = an.Description;
				bO.Callback = an.Callback;
				bO:Update()
			end;
			b:Connect(bP.Activated, function()
				an.Callback()
			end)
			return bO
		end;
		function bi:AddToggle(t)
			local bU = {
				Callback = function()
				end
			}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Toggle",
				Description = t.description or t.Description or t.desc or t.Desc or "this is a toggle",
				Default = t.default or t.Default or false,
				Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
				Sections = t.sections or t.Sections or false
			}
			local bV = b:Create("TextButton", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.8700000047683716,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 0),
				Visible = true,
				Name = "ToggleHolder",
				Parent = an.Sections and an.Sections or bk
			}, {
				b:Create("UICorner", {
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})
			local bW = b:Create("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Visible = true,
				Name = "ToggleFrame",
				Parent = bV
			}, {
				b:Create("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				b:Create("UIPadding", {
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})
			local bX = b:Create("TextLabel", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
				Name = "ToggleTitle",
				Parent = bW
			})
			local bY = b:Create("TextLabel", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
				Text = an.Description,
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, -54, 0, 14),
				Visible = true,
				Name = "ToggleDesc",
				Parent = bW
			})
			local bL = bY.TextBounds.Y;
			bY.Size = UDim2.new(1, -54, 0, bL)
			local bZ = c:LightenColor(b.Themes.BackgroundColor, 0.5)
			local b_ = c:LightenColor(b.Themes.BackgroundColor, 0.25)
			local c0 = b:Create("Frame", {
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = bZ,
				BackgroundTransparency = an.Default and 0.5 or 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.new(0, 36, 0, 18),
				Visible = true,
				Name = "Toggle",
				Parent = bV
			})
			b:Create("UICorner", {
				CornerRadius = UDim.new(0, 9),
				Parent = c0
			})
			table.insert(b.Storage.Toggles, c0)
			local c1 = b:Create("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = Color3.fromRGB(125, 125, 125),
				Parent = c0
			})
			local c2 = b:Create("ImageLabel", {
				Image = "http://www.roblox.com/asset/?id=12266946128",
				ImageColor3 = an.Default and b_ or Color3.fromRGB(255, 255, 255),
				ImageTransparency = 0.5,
				AnchorPoint = an.Default and Vector2.new(1, 0.5) or Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = an.Default and UDim2.new(1, -2, 0.5, 0) or UDim2.new(0, 2, 0.5, 0),
				Size = UDim2.new(0, 14, 0, 14),
				Visible = true,
				Name = "ToggleImage",
				Parent = c0
			})
			table.insert(b.Storage.ToggleImages, c2)
			local c3 = bX.TextBounds.Y;
			local c4 = bY and bY.TextBounds.Y or false;
			bX.Size = UDim2.new(1, -54, 0, c3)
			if bY then
				bY.Size = UDim2.new(1, -54, 0, c4)
			end;
			function bU:Update()
				local c3 = bX.TextBounds.Y;
				local c4 = bY and bY.TextBounds.Y or false;
				bX.Size = UDim2.new(1, -54, 0, c3)
				if bY then
					bY.Size = UDim2.new(1, -54, 0, c4)
				end
			end;
			function bU:Set(c5)
				an.Default = c5;
				if an.Flags then
					b.Flags[tostring(an.Flags)] = an.Default
				end;
				bZ = c:LightenColor(b.Themes.BackgroundColor, 0.5)
				b_ = c:LightenColor(b.Themes.BackgroundColor, 0.25)
				c:Thread(function()
					c:Animation(c0, {
						BackgroundTransparency = an.Default and 0.5 or 1
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c2, {
						AnchorPoint = an.Default and Vector2.new(1, 0.5) or Vector2.new(0, 0.5)
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c2, {
						Position = an.Default and UDim2.new(1, -2, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c2, {
						ImageTransparency = an.Default and 0 or 0.5
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c2, {
						ImageColor3 = an.Default and b_ or Color3.fromRGB(125, 125, 125)
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c1, {
						Color = an.Default and b.Themes.AccentColor or Color3.fromRGB(125, 125, 125)
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c1, {
						Thickness = an.Default and 0 or 1
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				end)
				if bU.Callback then
					bU.Callback(an.Default)
				end;
				return bU
			end;
			if an.Flags then
				b.Flags[tostring(an.Flags)] = an.Default
			end;
			bV.Activated:Connect(function()
				an.Default = not an.Default;
				if an.Flags then
					b.Flags[tostring(an.Flags)] = an.Default
				end;
				c:Thread(function()
					c:Animation(c0, {
						BackgroundTransparency = an.Default and 0.5 or 1
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c2, {
						AnchorPoint = an.Default and Vector2.new(1, 0.5) or Vector2.new(0, 0.5)
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c2, {
						Position = an.Default and UDim2.new(1, -2, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c2, {
						ImageTransparency = an.Default and 0 or 0.5
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c2, {
						ImageColor3 = an.Default and b_ or Color3.fromRGB(125, 125, 125)
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c1, {
						Color = an.Default and b.Themes.AccentColor or Color3.fromRGB(125, 125, 125)
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
					c:Animation(c1, {
						Thickness = an.Default and 0 or 1
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				end)
				if bU.Callback then
					bU.Callback(an.Default)
				end
			end)
			function bU:OnChanged(c6)
				bU.Callback = c6;
				if bU.Callback then
					bU.Callback(an.Default)
				end;
				return bU
			end;
			if an.Default then
				bU:Set(an.Default)
			end;
			return bU
		end;
		function bi:AddDropdown(t)
			local c7 = {
				Expanded = false,
				Options = {},
				Callback = function()
				end
			}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Dropdown",
				Description = t.description or t.Description or t.desc or t.Desc or "",
				Values = t.values or t.Values or t.options or t.Options or t.list or t.List or {},
				Multi = t.multi or t.Multi or false,
				Default = t.default or t.Default or {},
				Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
				Sections = t.sections or t.Sections or false
			}
			local c8 = an.Sections and an.Sections or bk;
			local c9 = b:Create("TextButton", {
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.8700000047683716,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 0),
				Visible = true,
				Name = "DropdownHolder",
				Parent = c8
			}, {
				b:Create("UICorner", {
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})
			local ca = b:Create("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Visible = true,
				Name = "DropdownFrame",
				Parent = c9
			}, {
				b:Create("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				b:Create("UIPadding", {
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})
			local cb = b:Create("TextLabel", {
				Name = "DropdownTitle",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Parent = ca
			})
			local cc = b:Create("TextButton", {
				Name = "DropdownOptions",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutoButtonColor = false,
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(160, 160, 160),
				BackgroundTransparency = 0.9,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.fromOffset(160, 30),
				Parent = c9,
				AutomaticSize = Enum.AutomaticSize.Y,
				SizeConstraint = Enum.SizeConstraint.RelativeYY
			}, {
				b:Create("UICorner", {
					CornerRadius = UDim.new(0, 5)
				}),
				b:Create("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(90, 90, 90),
					Transparency = 0.5
				})
			})
			local cd = typeof(an.Default) == "table" and table.concat(an.Default, ", ") or an.Default;
			local ce = b:Create("TextLabel", {
				Name = "TextLabel",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
				Text = cd,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.new(0, 8, 0.5, 0),
				Size = UDim2.new(1, -30, 0, 14),
				Parent = cc
			})
			local cf = b:Create("ImageLabel", {
				Name = "ImageLabel",
				Image = "rbxassetid://10709790948",
				ImageColor3 = Color3.fromRGB(170, 170, 170),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Rotation = 270,
				BorderSizePixel = 0,
				Position = UDim2.new(1, -8, 0.5, 0),
				Size = UDim2.fromOffset(16, 16),
				Parent = cc
			})
			local cg = b:Create("Frame", {
				Name = "OptionPopupHolder",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(478, 219),
				Size = UDim2.fromOffset(82, 392),
				Visible = false,
				ZIndex = 2,
				Parent = ar
			})
			local bB = b:Create("UISizeConstraint", {
				Name = "UISizeConstraint",
				MinSize = Vector2.new(170, 0),
				Parent = cg
			})
			local ch = b:Create("Frame", {
				Name = "OptionFrame",
				BackgroundColor3 = Color3.fromRGB(45, 45, 45),
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Size = UDim2.fromScale(1, 0.6),
				Parent = cg
			}, {
				b:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(0, 6)
				}),
				b:Create("UIStroke", {
					Name = "UIStroke",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				}),
				b:Create("ImageLabel", {
					Name = "ImageLabel",
					Image = "http://www.roblox.com/asset/?id=5554236805",
					ImageColor3 = Color3.fromRGB(0, 0, 0),
					ImageTransparency = 0.1,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(23, 23, 277, 277),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					BorderSizePixel = 0,
					Position = UDim2.fromOffset(-15, -15),
					Size = UDim2.new(1, 30, 1, 30)
				})
			})
			local ci = b:Create("ScrollingFrame", {
				Name = "OptionScrollingFrame",
				BottomImage = "rbxassetid://6889812791",
				CanvasSize = UDim2.fromOffset(0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				MidImage = "rbxassetid://6889812721",
				ScrollBarImageTransparency = 0.95,
				ScrollBarThickness = 4,
				TopImage = "rbxassetid://6276641225",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(5, 5),
				Size = UDim2.new(1, -5, 1, -10),
				Parent = ch
			}, {
				b:Create("UIListLayout", {
					Name = "UIListLayout",
					Padding = UDim.new(0, 3)
				})
			})
			local cj = b:Create("UIGradient", {
				Name = "DropdownGradient",
				Rotation = 90,
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, b.Themes.BackgroundColor),
					ColorSequenceKeypoint.new(1, c:LightenColor(b.Themes.BackgroundColor, 0.5))
				}),
				Parent = ch
			})
			table.insert(b.Storage.DropdownGradient, cj)
			function c7:Add(ck, cl)
				local ck = ck or "OptionValue"
				local cl = cl or false;
				local cm = b:Create("TextButton", {
					Name = "Option",
					FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextSize = 14,
					AutoButtonColor = false,
					BackgroundColor3 = Color3.fromRGB(120, 120, 120),
					BackgroundTransparency = cl and 0.9 or 1,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					Size = UDim2.new(1, -5, 0, 32),
					ZIndex = 23,
					Parent = ci
				}, {
					b:Create("UICorner", {
						Name = "UICorner",
						CornerRadius = UDim.new(0, 6)
					})
				})
				local cn = b:Create("Frame", {
					Name = "Selected",
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundColor3 = b.Themes.BackgroundColor,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					BorderSizePixel = 0,
					Position = UDim2.fromOffset(-1, 16),
					Size = UDim2.fromOffset(4, 14),
					Visible = cl,
					Parent = cm
				})
				b:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(0, 2),
					Parent = cn
				})
				table.insert(b.Storage.Selected, cn)
				table.insert(c7.Options, {
					Selected = cn,
					Option = cm
				})
				local co = b:Create("TextLabel", {
					Name = "OptionLabel",
					FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
					Text = ck,
					TextColor3 = Color3.fromRGB(240, 240, 240),
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1,
					BorderColor3 = Color3.fromRGB(0, 0, 0),
					Position = UDim2.fromOffset(10, 0),
					Size = UDim2.fromScale(1, 1),
					Parent = cm
				})
				function c7:Update(cp)
					ce.Text = typeof(an.Default) == "table" and table.concat(an.Default, ", ") or an.Default;
					if not cp then
						c7.Expanded = false;
						cg.Visible = false
					end
				end;
				b:Connect(cm.Activated, function()
					if an.Multi then
						if table.find(an.Default, ck) then
							table.remove(an.Default, table.find(an.Default, ck))
						else
							table.insert(an.Default, ck)
						end;
						c:Thread(function()
							cn.Visible = type(an.Default) == "table" and table.find(an.Default, ck) or an.Default == ck;
							c:Animation(cm, {
								BackgroundTransparency = table.find(an.Default, ck) and 0.9 or 1
							}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
						end)
					else
						an.Default = ck;
						c:Thread(function()
							for q, r in pairs(c7.Options) do
								r.Selected.Visible = false;
								c:Animation(r.Option, {
									BackgroundTransparency = 1
								}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
							end;
							cn.Visible = type(an.Default) == "table" and table.find(an.Default, ck) or an.Default == ck;
							c:Animation(cm, {
								BackgroundTransparency = 0.9
							}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
						end)
					end;
					if an.Flags then
						b.Flags[tostring(an.Flags)] = an.Default
					end;
					ce.Text = typeof(an.Default) == "table" and table.concat(an.Default, ", ") or an.Default;
					if c7.Callback then
						c7.Callback(an.Default)
					end
				end)
			end;
			for q, r in pairs(an.Values) do
				c7:Add(r, typeof(an.Default) == "table" and table.find(an.Default, r) or an.Default == r)
			end;
			if an.Flags then
				b.Flags[tostring(an.Flags)] = an.Default
			end;
			b:Connect(i.InputBegan, function(_, a2)
				if (_.UserInputType == Enum.UserInputType.MouseButton1 or _.UserInputType == Enum.UserInputType.Touch) and not a2 then
					if c7.Expanded or cg.Visible then
						c7.Expanded = false;
						cg.Visible = false;
						bk.ScrollingEnabled = true
					end
				end
			end)
			b:Connect(bk:GetPropertyChangedSignal("Visible"), function()
				if c7.Expanded or cg.Visible then
					c7.Expanded = false;
					cg.Visible = false;
					bk.ScrollingEnabled = true
				end
			end)
			b:Connect(as:GetPropertyChangedSignal("Visible"), function()
				if c7.Expanded or cg.Visible then
					c7.Expanded = false;
					cg.Visible = false;
					bk.ScrollingEnabled = true
				end
			end)
			function c7:Hide()
				c7.Expanded = false;
				cg.Visible = false;
				bk.ScrollingEnabled = true
			end;
			function c7:SetValues(cq, cl)
				local cq = cq or {}
				local cl = typeof(cl) == "table" and cl or cl;
				c7.Options = {}
				for q, r in pairs(ci:GetChildren()) do
					if r:IsA("TextButton") then
						r:Destroy()
					end
				end;
				an.Values = cq;
				an.Default = cl;
				for q, r in pairs(cq) do
					c7:Add(r, typeof(cl) == "table" and table.find(cl, r) or cl == r)
				end;
				ce.Text = typeof(cl) == "table" and table.concat(cl, ", ") or cl;
				if an.Flags then
					b.Flags[tostring(an.Flags)] = an.Default
				end;
				if c7.Callback then
					c7.Callback(cl)
				end
			end;
			function c7:OnChanged(c6)
				c7.Callback = c6;
				return c7
			end;
			table.insert(b.Elements.Dropdowns, c7)
			b:Connect(cc.Activated, function()
				c7.Expanded = not c7.Expanded;
				if c7.Expanded then
					for q, r in pairs(b.Elements.Dropdowns) do
						if r ~= c7 then
							r:Hide()
						end
					end;
					bk.ScrollingEnabled = false;
					local cr = cc.AbsolutePosition;
					cg.Position = not b.Maximized and UDim2.fromOffset(cr.X + 0, cr.Y) or UDim2.fromOffset(cr.X, cr.Y)
					c:Animation(cg, {
						Visible = true
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				else
					bk.ScrollingEnabled = true;
					c:Animation(cg, {
						Visible = false
					}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				end
			end)
			return c7
		end;
		function bi:AddSlider(t)
			local cs = {
				Holding = false,
				Callback = function()
				end
			}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Slider",
				Description = t.description or t.Description or t.desc or t.Desc or "",
				Default = t.default or t.Default or t.value or t.Value or 0,
				Min = t.min or t.Min or 0,
				Max = t.max or t.Max or 100,
				Decimal = t.decimal or t.Decimal or 0,
				Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
				Sections = t.sections or t.Sections or false
			}
			local ct = b:Create("TextButton", {
				Name = "SliderHolder",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutoButtonColor = false,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.9,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.fromScale(1, 0),
				Visible = true,
				Parent = an.Sections and an.Sections or bk
			}, {
				b:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					Name = "UIStroke",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})
			local cu = b:Create("Frame", {
				Name = "SliderFrame",
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(10, 0),
				Size = UDim2.new(1, -28, 0, 0),
				Parent = ct
			}, {
				b:Create("UIListLayout", {
					Name = "UIListLayout",
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5)
				}),
				b:Create("UIPadding", {
					Name = "UIPadding",
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})
			local cv = b:Create("TextLabel", {
				Name = "SliderTitle",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Parent = cu
			})
			local cw = b:Create("TextLabel", {
				Name = "SliderDesc",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
				Text = an.Description,
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, -170, 0, 14),
				Parent = cu
			})
			local cx = b:Create("Frame", {
				Name = "Slider",
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.4,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.new(1, 0, 0, 4),
				Parent = ct
			}, {
				b:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(1, 0)
				}),
				b:Create("UISizeConstraint", {
					Name = "UISizeConstraint",
					MaxSize = Vector2.new(150, math.huge)
				})
			})
			local cy = b:Create("TextBox", {
				Name = "SliderText",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
				Text = an.Default,
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Right,
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.new(0, -4, 0.5, 0),
				Size = UDim2.fromOffset(100, 14),
				Parent = cx
			})
			local cz = math.clamp(an.Default / an.Max, 0, 1)
			cz = cz ~= cz and 0 or cz;
			cz = math.floor(cz / an.Decimal) * an.Decimal;
			local cA = b:Create("Frame", {
				Name = "SliderValue",
				BackgroundColor3 = b.Themes.BackgroundColor,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Size = UDim2.fromScale(cz, 1),
				Parent = cx
			})
			b:Create("UICorner", {
				Name = "UICorner",
				CornerRadius = UDim.new(1, 0),
				Parent = cA
			})
			table.insert(b.Storage.SliderValue, cA)
			local cB = b:Create("Frame", {
				Name = "SliderMaxValue",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(7, 0),
				Size = UDim2.new(1, -14, 1, 0),
				Parent = cx
			})
			local cC = b:Create("ImageLabel", {
				Name = "SliderImage",
				Image = "http://www.roblox.com/asset/?id=12266946128",
				ImageColor3 = b.Themes.BackgroundColor,
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(cz, -7, 0.5, 0),
				Size = UDim2.fromOffset(14, 14),
				Parent = cB
			})
			table.insert(b.Storage.SliderImage, cC)
			b:Connect(cC.InputBegan, function(_, a2)
				if _.UserInputType == Enum.UserInputType.MouseButton1 or _.UserInputType == Enum.UserInputType.Touch and not a2 then
					cs.Holding = true
				end
			end)
			b:Connect(cC.InputEnded, function(_, a2)
				if _.UserInputType == Enum.UserInputType.MouseButton1 and not a2 then
					cs.Holding = false
				end
			end)
			b:Connect(i.TouchEnded, function(_, a2)
				if cs.Holding and _.UserInputType == Enum.UserInputType.Touch then
					cs.Holding = false
				end
			end)
			if an.Flags then
				b.Flags[tostring(an.Flags)] = an.Default
			end;
			function cs:OnChanged(c6)
				cs.Callback = c6;
				if cs.Callback then
					cs.Callback(an.Default)
				end;
				return cs
			end;
			function cs:SetValue(z)
				z = math.clamp(math.round(z / an.Decimal) * an.Decimal, an.Min, an.Max)
				z = math.floor(z / an.Decimal) * an.Decimal;
				z = c:Decimal(z, an.Decimal)
				local cD = UDim2.new((z - an.Min) / (an.Max - an.Min), -7, 0.5, 0)
				c:Animation(cC, {
					Position = cD
				}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				c:Animation(cA, {
					Size = UDim2.fromScale((z - an.Min) / (an.Max - an.Min), 1)
				}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				an.Default = z;
				cy.Text = tostring(z)
				if an.Flags then
					b.Flags[tostring(an.Flags)] = z
				end;
				if cs.Callback then
					cs.Callback(z)
				end
			end;
			if an.Default then
				cs:SetValue(an.Default)
			end;
			b:Connect(cy.FocusLost, function()
				local z = tonumber(cy.Text) or an.Min;
				z = math.clamp(math.round(z / an.Decimal) * an.Decimal, an.Min, an.Max)
				z = math.floor(z / an.Decimal) * an.Decimal;
				z = c:Decimal(z, an.Decimal)
				local cD = UDim2.new((z - an.Min) / (an.Max - an.Min), -7, 0.5, 0)
				c:Animation(cC, {
					Position = cD
				}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				c:Animation(cA, {
					Size = UDim2.fromScale((z - an.Min) / (an.Max - an.Min), 1)
				}, b.AnimationSpeed, b.EasingStyle.Quad, b.EasingDirection.Out)
				cy.Text = tostring(z)
				if an.Flags then
					b.Flags[tostring(an.Flags)] = z
				end;
				if cs.Callback then
					cs.Callback(z)
				end
			end)
			b:Connect(i.InputChanged, function(_)
				if cs.Holding and (_.UserInputType == Enum.UserInputType.MouseMovement or _.UserInputType == Enum.UserInputType.Touch) then
					local cB = cC.Parent.AbsoluteSize.X;
					local cA;
					cA = _.Position.X - cC.Parent.AbsolutePosition.X;
					local cz = math.clamp((cA - 7) / cB, 0, 1)
					local cE = an.Min + (an.Max - an.Min) * cz;
					cs:SetValue(cE)
				end
			end)
			return cs
		end;
		function bi:AddInput(t)
			local cF = {
				Callback = function()
				end,
				Toggle = false
			}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Input",
				Default = t.default or t.Default or t.value or t.Value or "",
				Placeholder = t.placeholder or t.Placeholder or "",
				Numeric = t.numeric or t.Numeric or false,
				Finished = t.finished or t.Finished or false,
				Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
				Sections = t.sections or t.Sections or false
			}
			local cG = b:Create("TextButton", {
				Name = "InputHolder",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/SourceSansPro.json"),
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 14,
				AutoButtonColor = false,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(120, 120, 120),
				BackgroundTransparency = 0.87,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				LayoutOrder = 7,
				Size = UDim2.fromScale(1, 0),
				Visible = true,
				Parent = an.Sections and an.Sections or bk
			}, {
				b:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					Name = "UIStroke",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(35, 35, 35)
				})
			})
			local cH = b:Create("Frame", {
				Name = "InputFrame",
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(10, 0),
				Size = UDim2.new(1, -28, 0, 0)
			}, {
				b:Create("UIListLayout", {
					Name = "UIListLayout",
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder
				}),
				b:Create("UIPadding", {
					Name = "UIPadding",
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				})
			})
			local cI = b:Create("TextLabel", {
				Name = "InputTitle",
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Parent = cH
			})
			cH.Parent = cG;
			local _ = b:Create("Frame", {
				Name = "Input",
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = Color3.fromRGB(160, 160, 160),
				BackgroundTransparency = 0.9,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(1, -10, 0.5, 0),
				Size = UDim2.fromOffset(160, 30),
				Parent = cG
			}, {
				b:Create("UICorner", {
					Name = "UICorner",
					CornerRadius = UDim.new(0, 4)
				}),
				b:Create("UIStroke", {
					Name = "UIStroke",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Color3.fromRGB(90, 90, 90),
					Transparency = 0.5
				})
			})
			local cJ = b:Create("Frame", {
				Name = "InputLine",
				AnchorPoint = Vector2.new(0, 1),
				BackgroundColor3 = Color3.fromRGB(150, 150, 150),
				BackgroundTransparency = 0.5,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 2, 1, 0),
				Size = UDim2.new(1, -4, 0, 1),
				Parent = _
			})
			local cK = b:Create("Frame", {
				Name = "InputTextFrame",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				ClipsDescendants = true,
				Position = UDim2.fromOffset(6, 0),
				Size = UDim2.new(1, -12, 1, 0)
			})
			local cL = b:Create("TextBox", {
				Name = "InputText",
				ClearTextOnFocus = false,
				FontFace = b.Settings.FontFace or Font.new("rbxasset://fonts/families/GothamSSm.json"),
				PlaceholderColor3 = Color3.fromRGB(170, 170, 170),
				PlaceholderText = an.Placeholder,
				Text = an.Default,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.fromOffset(2, 0),
				Size = UDim2.fromScale(1, 1),
				Parent = cK
			})
			cK.Parent = _;
			_.Parent = cG;
			if an.Flags then
				b.Flags[tostring(an.Flags)] = an.Default
			end;
			local function Z()
				if an.Numeric then
					cL.Text = cL.Text:gsub("%D", "")
				end;
				an.Default = cL.Text;
				if an.Flags then
					b.Flags[tostring(an.Flags)] = an.Default
				end;
				if cF.Callback and not an.Finished then
					cF.Callback(an.Default)
				end
			end;
			b:Connect(cL:GetPropertyChangedSignal("Text"), Z)
			b:Connect(cL.FocusLost, function()
				if cF.Callback and an.Finished then
					an.Default = cL.Text;
					if an.Flags then
						b.Flags[tostring(an.Flags)] = an.Default
					end;
					cF.Callback(an.Default)
				end
			end)
			function cF:OnChanged(c6)
				cF.Callback = c6;
				if an.Default then
					c6(an.Default)
				end;
				return cF
			end;
			function cF:SetValue(z)
				an.Default = z;
				cL.Text = z;
				if an.Flags then
					b.Flags[tostring(an.Flags)] = an.Default
				end;
				Z()
			end;
			return cF
		end;
		function bi:AddSection(t)
			local cM = {}
			local t = t or {}
			local an = {
				Title = t.title or t.Title or "Section"
			}
			local cN = b:Create("Frame", {
				Name = "SectionHolder",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				LayoutOrder = 7,
				Size = UDim2.new(1, 0, 0, 65),
				Parent = bk
			})
			local cO = b:Create("UIListLayout", {
				Name = "UIListLayout",
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 5),
				Parent = cN
			})
			local cP = b:Create("TextLabel", {
				Name = "TextLabel",
				FontFace = b.Settings.FontFace or Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
				RichText = true,
				Text = an.Title,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 18,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Position = UDim2.fromOffset(0, 2),
				Size = UDim2.new(1, -16, 0, 18),
				Parent = cN
			})
			function cM:AddParagraph(t)
				local bF = {}
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Paragraph",
					Content = t.content or t.Content or t.desc or t.Desc or "",
					Sections = cN
				}
				local bF = bi:AddParagraph(an)
				return bF
			end;
			function cM:AddButton(t)
				local bO = {}
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Button",
					Description = t.description or t.Description or t.desc or t.Desc or "",
					Callback = t.callback or t.Callback or function()
					end,
					Sections = cN
				}
				local bO = bi:AddButton(an)
				return bO
			end;
			function cM:AddToggle(t)
				local c0 = {}
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Toggle",
					Description = t.description or t.Description or t.desc or t.Desc or "",
					Default = t.default or t.Default or t.value or t.Value or false,
					Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
					Sections = cN
				}
				local c0 = bi:AddToggle(an)
				return c0
			end;
			function cM:AddDropdown(t)
				local c7 = {}
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Dropdown",
					Description = t.description or t.Description or t.desc or t.Desc or "",
					Values = t.values or t.Values or t.options or t.Options or {},
					Default = t.default or t.Default or t.value or t.Value or {},
					Multi = t.multi or t.Multi or false,
					Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
					Sections = cN
				}
				local c7 = bi:AddDropdown(an)
				return c7
			end;
			function cM:AddSlider(t)
				local cx = {}
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Slider",
					Description = t.description or t.Description or t.desc or t.Desc or "",
					Default = t.default or t.Default or t.value or t.Value or 0,
					Min = t.min or t.Min or 0,
					Max = t.max or t.Max or 100,
					Decimal = t.decimal or t.Decimal or 0,
					Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
					Sections = cN
				}
				local cx = bi:AddSlider(an)
				return cx
			end;
			function cM:AddInput(t)
				local _ = {}
				local t = t or {}
				local an = {
					Title = t.title or t.Title or "Input",
					Default = t.default or t.Default or t.value or t.Value or "",
					Placeholder = t.placeholder or t.Placeholder or "",
					Numeric = t.numeric or t.Numeric or false,
					Finished = t.finished or t.Finished or false,
					Flags = t.flags or t.Flags or t.pointer or t.Pointer or t.flag or t.Flag or false,
					Sections = cN
				}
				local _ = bi:AddInput(an)
				return _
			end;
			b:Connect(cO:GetPropertyChangedSignal("AbsoluteContentSize"), function()
				cN.Size = UDim2.new(1, 0, 0, cO.AbsoluteContentSize.Y + 10)
			end)
			return cM
		end;
		return bi
	end;
	c:SetTheme(b.Theme)
	return am
end;
return b, c
