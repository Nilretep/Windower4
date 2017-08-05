function get_sets()
	
	mote_include_version = 2
	include('Mote-Include.lua')
	
end

function job_setup()

	include('Kay-Include.lua')

	initialize_job()
	
end

function user_setup()

	state.IdleMode:options('Normal','SuperMDT','SuperPDT')
	state.OffenseMode:options('Normal','DW','Heavy','Wyrms')
	state.WeaponskillMode:options('Normal','Acc')
	state.PhysicalDefenseMode:options('PDT')
	state.MagicalDefenseMode:options('MDT')
	
end

function init_gear_sets()

	-- Misc.
	sets.enmity                             = {head="Aegishjalmer",neck="Ritter gorget",body="Valhalla breastplate",hands="Valor gauntlets",ring2="Hercules' ring",back="Cerberus mantle +1",waist="Trance belt",legs="Valor breeches",feet="Valor leggings"}
	sets.resting                            = set_combine(sets.enmity,{ammo="Bibiki seashell",neck="Gnole torque",feet="Numerist pumps"})
	                                        
	sets.MND                                = {head="Maat's cap",neck="Gnole torque",ear2="Mamool Ja earring",body="Crimson scale mail",legs="Jet seraweels",feet="Valor leggings"}
	                                        
	-- Buff sets                            
	                                        
	-- Precast JAs                          
	sets.precast.JA                         = set_combine(sets.enmity,{})
	                                       
	sets.precast.JA['Cover']                = set_combine(sets.precast.JA,{head="Gallant coronet",body="Valor surcoat"})
	sets.precast.JA['Rampart']              = set_combine(sets.precast.JA,{head="Valor coronet"})
	sets.precast.JA['Sentinel']             = set_combine(sets.precast.JA,{feet="Valor leggings"})
	sets.precast.JA['Shield Bash']          = set_combine(sets.precast.JA,{ear2="Knightly earring",hands="Valor gauntlets"})
	sets.precast.JA['Holy Circle']          = set_combine(sets.precast.JA,{feet="Gallant leggings"})
	                                       
	-- Precast magic                        
	sets.precast.FC                         = {ear1="Loquacious earring",ear2="Knightly earring",legs="Homam cosciales"}
	                                        
	-- Midcast magic                        
	sets.midcast['Enhancing magic']         = set_combine(sets.enmity,sets.precast.FC,{ammo="Sturm's report",legs="Gallant breeches"})
	sets.midcast['Healing magic']           = 
	sets.midcast['Divine magic']            = set_combine(sets.enmity,sets.precast.FC,{ammo="Sturm's report",head="Homam zucchetto",ear1="Knight's earring",body="Gallant surcoat"})
	sets.midcast['Ninjutsu']                = set_combine(sets.enmity,sets.precast.FC,{ring1="Antica ring"})
	                                        
	-- Idle sets                            
	sets.idle                               = {ammo="Bibiki seashell",head="",neck="Chocobo whistle",ear1="Ethereal earring",ear2="Merman's earring",body="Vermillion cloak",hands="Heavy gauntlets",ring1="Defending ring",ring2="Shadow ring",back="Shadow mantle",waist="Lycopodium sash",legs="Crimson cuisses",feet="Kaiser schuhs"}
	sets.idle.Town                          = set_combine(sets.idle,{head="Dream hat +1",ring2="Warp ring",back="Nexus cape",body="Republic aketon"})
	
	sets.idle.SuperMDT                      = {ammo="White tathlum"
	                                          ,head="Koenig schaller",neck="Gnole torque",ear1="Ethereal earring",ear2="Merman's earring"
											  ,body="Avalon breastplate",hands="Koenig handschuhs",ring1="Defending ring",ring2="Shadow ring"
											  ,back="Valor cape",waist="Resolute belt",legs="Koenig diechlings",feet="Valor leggings"}
	sets.idle.SuperPDT                      = {ammo="Bibiki seashell"
											  ,head="Koenig schaller",neck="Fortified chain",ear1="Knight's earring",ear2="Ethereal earring"
											  ,body="Valhalla breastplate",hands="Heavy gauntlets",ring1="Defending ring",ring2=""
											  ,back="Shadow mantle",waist="Warwolf belt",legs="Koenig diechlings",feet="Kaiser schuhs"}
	
	-- Defense sets                         
	sets.defense.PDT                        = set_combine(sets.enmity,{hands="Heavy gauntlets",ring1="Defending ring",ring2="Jelly ring"})
	sets.defense.MDT                        = set_combine(sets.enmity,{ear2="Merman's earring",hands="Heavy gauntlets",ring1="Defending ring",ring2="Merman's ring"})
	sets.defense.Breath                     = set_combine(sets.enmity,{body="Crimson scale mail",ring1="Defending ring"})
	                                        
	-- Engaged sets                         
	sets.engaged                            = {ammo="Bibiki seashell"
											  ,head="Walahra turban",neck="Peacock amulet",ear1="Knight's earring",ear2="Brutal earring"
											  ,body="Homam corazza",hands="Dusk gloves +1",ring1="Sattva ring",ring2=gear.TRing1
											  ,back="Cerberus mantle",waist="Velocious belt",legs="Homam cosciales",feet="Homam gambieras"}
	sets.engaged.DW                         = set_combine(sets.engaged,{ear1="Suppanomimi",ring1="Rajas ring"})
	sets.engaged.Heavy                      = {ammo="Bibiki seashell"
	                                          ,head="Koenig schaller",neck="Fortified chain",ear1="Knight's earring",ear2="Ethereal earring"
											  ,body="Valhalla breastplate",hands="Koenig handschuhs",ring1="Defending ring",ring2="Sattva ring"
											  ,back="Shadow mantle",waist="Warwolf belt",legs="Koenig diechlings",feet="Kaiser schuhs"}
	sets.engaged.Wyrms						= set_combine(sets.engaged.Heavy,{body="Crimson scale mail"})
	
	-- Weaponskill sets                     
	sets.precast.WS                         = {head="Hecatomb cap"      ,neck="Spike necklace"        ,ear1="Fowling earring",ear2="Brutal earring"
	                                          ,body="Aurum cuirass"     ,hands="Alkyoneus's bracelets"                       ,ring2="Flame ring"
											  ,back="Cerberus mantle +1",waist="Warwolf belt"         ,legs="Valor breeches" ,feet="Hecatomb leggings +1"}
	sets.precast.WS.Acc                     = set_combine(sets.precast.WS,{neck="Peacock amulet",hands="Hecatomb mittens +1"})
	                                        
	sets.precast.WS['Vorpal Blade']         = set_combine(sets.precast.WS,{neck="Thunder gorget",body="Zahak's mail",hands="Hecatomb mittens +1",back="Cuchulain's mantle"})
	sets.precast.WS['Vorpal Blade'].Acc     = set_combine(sets.precast.WS,{ring2=gear.TRing1})
	                                        
	sets.precast.WS['Requiescat']           = set_combine(sets.precast.WS['Vorpal Blade'],{neck="Shadow gorget"})
	sets.precast.WS['Requiescat'].Acc       = set_combine(sets.precast.WS['Requiescat'],{ring2=gear.TRing1})
	                                       
	sets.precast.WS['Knights of Round']     = set_combine(sets.precast.WS,{head="Maat's cap",neck="Light gorget"})
	sets.precast.WS['Knights of Round'].Acc = set_combine(sets.precast.WS['Knights of Round'],{ring2=gear.TRing1})
	                                        
	sets.precast.WS['Swift Blade']          = set_combine(sets.precast.WS,{head="Maat's cap",neck="Soil gorget"})
	sets.precast.WS['Swift Blade'].Acc      = set_combine(sets.precast.WS['Swift Blade'],{ring2=gear.TRing1})
	                                        
	sets.precast.WS['Savage Blade']         = set_combine(sets.precast.WS,{head="Maat's cap",neck="Breeze gorget"})
	sets.precast.WS['Savage Blade'].Acc     = set_combine(sets.precast.WS['Savage Blade'],{ring2=gear.TRing1})
	

end

function job_post_midcast(spell,action,spellMap,eventArgs)

	if spell.skill == 'Healing Magic' or spell.skill == 'Divine magic' then 
		if spell.element == world.weather_element or spell.element == world.day_element then
			equip(sets.obi[spell.element])
		end
	end

end

function job_status_change(new,old)

	if new == "Idle" then
		if (player.hp/player.max_hp) > 0.85 then
			equip({neck="Parade gorget"})
			disable("neck")
		elseif (player.hp/player.max_hp) < 0.50 then
			equip({ring2="Hercules' ring"})
			disable("neck")
		end
	else
		enable("neck")
	end
	
	gear.main = player.equipment.main
	gear.sub = player.equipment.sub
	
end