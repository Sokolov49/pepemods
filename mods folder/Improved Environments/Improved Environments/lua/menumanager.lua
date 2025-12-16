if not _G.envsmod then
	_G.envsmod = _G.envsmod or {}
	envsmod._path = ModPath
	envsmod._data_path = SavePath .. "improved_environments.txt"
	envsmod._settings = {}
	envsmod._settings.color_gradings = false
	function envsmod:Load()
		local file = io.open(envsmod._data_path, "r")
		if file then
			local decoded = json.decode(file:read("*all")) or {}
			for k, v in pairs(decoded) do
				envsmod._settings[k] = v
			end
			file:close()
		end
	end

	function envsmod:Save()
		local file = io.open(envsmod._data_path, "w+")
		if file then
			file:write(json.encode(envsmod._settings))
			file:close()
		end
	end		

	dofile(ModPath .. "loadconfig.lua")	
end

Hooks:Add("LocalizationManagerPostInit", "LocalizationManagerPostInit_envsmod", function(loc)

	for _, filename in pairs(file.GetFiles(envsmod._path .. "loc/")) do
		local str = filename:match('^(.*).txt$')
		if str and Idstring(str) and Idstring(str):key() == SystemInfo:language():key() then
			loc:load_localization_file(envsmod._path .. "loc/" .. filename)
			break
		end
	end

	loc:load_localization_file(envsmod._path .. "loc/english.txt", false)
end)

Hooks:Add("MenuManagerInitialize", "MenuManagerInitialize_envsmod", function(menu_manager)

	MenuCallbackHandler.envsmod_main_callback = function(this,item)
		local name = tostring(item._parameters["name"]):gsub("envsmod_","")
		envsmod._settings[name] = Utils:ToggleItemToBoolean(item)
	end

	MenuCallbackHandler.envsmod_back = function(this, item)
		envsmod:Save()
	end
	
	envsmod:Load()

	-- Main Menu
	Hooks:Add("MenuManagerSetupCustomMenus", "Base_SetupCustomMenus_Json_envsmod_main_menu", function( menu_manager, nodes )
			MenuHelper:NewMenu( "envsmod_main_menu" )
		end)

	Hooks:Add("MenuManagerBuildCustomMenus", "Base_BuildCustomMenus_Json_envsmod_main_menu", function( menu_manager, nodes )

			local parent_menu = "blt_options"
			local menu_id = "envsmod_main_menu"
			local menu_name = "envsmod_main_menu_title"
			local menu_desc = "envsmod_main_menu_desc"

			local data = {
				focus_changed_callback = nil,
				back_callback = "envsmod_back",
				area_bg = nil,
			}
			nodes[menu_id] = MenuHelper:BuildMenu( menu_id, data )

			MenuHelper:AddMenuItem( nodes[parent_menu], menu_id, menu_name, menu_desc, nil )

		end)

	Hooks:Add("MenuManagerPopulateCustomMenus", "Base_PopulateCustomMenus_Json_envsmod_main_menu", function( menu_manager, nodes )
			MenuHelper:AddToggle({
				id = "envsmod_color_gradings",
				title = "envsmod_color_gradings_title",
				desc = "envsmod_color_gradings_desc",
				callback = "envsmod_main_callback",
				value = envsmod._settings.color_gradings,
				menu_id = "envsmod_main_menu",
				priority = 2,
				localized = true
			})

		--[[MenuHelper:AddDivider({
				id = "envsmod_divider_0",
				size = 24,
				menu_id = "envsmod_main_menu",
				priority = 1
			})]]--
		end)
end)
