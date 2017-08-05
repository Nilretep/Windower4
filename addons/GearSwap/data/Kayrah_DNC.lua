function get_sets()

    mote_include_version = 2
    include('Mote-Include.lua')

end

function job_setup()
	
	include('Kay-Include.lua')
	
	initialize_job()
	
end

function user_setup()

    state.OffenseMode:options('Normal','HybridAcc','HNM','Tank')
    state.WeaponskillMode:options('Normal', 'HNM')
	state.PhysicalDefenseMode:options('Evasion','PDT')
	state.MagicalDefenseMode:options('MDT')

end

function init_gear_sets()

	-- misc
	sets.CHR                                   = {head="Maat's cap",neck="Flower necklace",back="Etoile cape",legs="Etoile tights"}
	sets.VIT                                   = {head="Maat's cap",hands="Etoile bangles"}
	
	sets.enmityUp                              = {neck="Ritter gorget",hands="Etoile bangles",back="Cerberus mantle",waist="Trance belt"}
	sets.enmityDown							   = {head="Zha'Go's barbut",body="Dancer's casaque",waist="Buccaneer's belt",legs="Dancer's tights"}
	
	-- buff
	
	-- precast ja
	sets.precast.JA                            = {}
	
	sets.precast.Waltz                         = set_combine(sets.precast.JA,sets.CHR,{})
	sets.precast.Waltz['Healing Waltz']        = set_combine(sets.precast.JA,{})
	
	sets.precast.Samba                         = {head="Dancer's tiara"}
	sets.precast.Jig                           = {legs="Etoile tights",feet="Dancer's toe shoes"}
	
	sets.precast.Step                          = {ammo="Black tathlum"
												 ,head="Enkidu's cap"       ,neck="Peacock amulet"   ,ear1="Pixie earring"   ,ear2="Hollow earring"
												 ,body="Scorpion harness +1",hands="Dancer's bangles",ring1=gear.TRing2,ring2=gear.TRing1
												 ,back="Etoile cape"        ,waist="Lycopodium sash" ,legs="Oily trousers"   ,feet="Etoile toe shoes"}
	
	sets.precast.Flourish1                     = {}
	sets.precast.Flourish1['Violent Flourish'] = {head="Maat's cap"        ,neck="Chivalrous chain"
	                                             ,body="Etoile casaque"    ,hands="Enkidu's mittens",ring1="Rajas ring"      ,ring2="Flame ring"
	                                             ,back="Cerberus mantle +1",waist="Warwolf belt"    ,legs="Enkidu's subligar",feet="Merman's leggings"}
	
	sets.precast.Waltz['Healing Waltz']        = {}
	
	-- precast magic
	sets.precast.FC                            = {ear2="Loquacious earring"}
	                                           
	-- midcast magic                           
	sets.midcast.FastRecast                    = set_combine(sets.precast.FC,{head="Walahra turban",body="Rapparee harness",hands="Dusk gloves +1",legs="Etoile tights",feet="Dusk ledelsens +1"})
	sets.midcast['Ninjutsu']                   = set_combine(sets.midcast.FastRecast,{ring2="Antica ring",back="Shadow mantle"})
	                                           
	-- idle                                    
	sets.idle                                  = {ammo="Bibiki seashell"
												 ,head="Gnole crown",neck="Chocobo whistle",ear1="Merman's earring",ear2="Merman's earring"
												 ,body="Enkidu's harness",hands="Enkidu's mittens",ring1="Defending ring",ring2="Shadow ring"
												 ,back="Shadow mantle",waist="Lycopodium sash",legs="Enkidu's subligar",feet="Merman's leggings"}
	                                           
	sets.idle.Town                             = set_combine(sets.idle,{ring2="Warp ring",back="Nexus cape"})
	                                           
	sets.resting                               = {}
	
	-- defense
	sets.defense.Evasion                       = {head="Gnole crown",neck="Fortified torque",ear2="Drone earring",body="Scorpion harness +1",feet="Dancer's toe shoes"}
	sets.defense.PDT                           = {ring1="Defending ring",ring2="Jelly ring",back="Shadow mantle"}
	sets.defense.MDT                           = {ear1="Merman's earring",ear2="Merman's earring",ring1="Defending ring",ear2="Shadow ring",waist="Resolute belt",feet="Merman's leggings"}
	
	-- engaged
	sets.engaged                               = {ammo="Black tathlum"
	                                             ,head="Walahra turban",neck="Chivalrous chain",ear1="Suppanomimi",ear2="Brutal earring"
												 ,body="Rapparee harness",hands="Dusk gloves +1",ring1="Rajas ring",ring2=gear.TRing1
												 ,back="Cerberus mantle +1",waist="Velocious belt",legs="Etoile tights",feet="Dusk ledelsens +1"}
	sets.engaged.HybridAcc                     = set_combine(sets.engaged,{neck="Peacock amulet",ring1=gear.TRing2,back="Etoile cape"})
	sets.engaged.HNM                           = set_combine(sets.engaged.HybridAcc,{})
	sets.engaged.Tank                          = set_combine(sets.engaged,{})
	
	-- ranged
	sets.precast.RA                            = {head="Zha'Go's barbut" ,neck="Peacock amulet"       ,ear1="Hollow earring",ear2="Drone earring"
												 ,body="Rapparee harness",hands="Barbarossa's moufles",ring1="Merman's ring",ring2="Merman's ring"
												 ,back="Amemet mantle +1",waist="Buccaneer's belt"    ,legs="Oily trousers" ,feet="Enkidu's leggings"}
	sets.midcast.RA                            = set_combine(sets.precast.RA,{})
	                                           
	-- ws                                      
	sets.precast.WS                            = {head="Maat's cap",neck="Chivalrous chain",ear1="Pixie earring",ear2="Brutal earring"
												 ,body="Enkidu's harness",hands="Enkidu's mittens",ring1="Rajas ring",ring2="Flame ring"
												 ,back="Cerberus mantle +1",waist="Warwolf belt",legs="Enkidu's subligar",feet="Enkidu's leggings"}
	sets.precast.WS.HNM                        = set_combine(sets.precast.WS,{back="Cuchulain's mantle"})
	
	sets.precast.WS['Cyclone']                 = set_combine(sets.precast.WS,{neck="Lemegeton medallion +1",ear1="Moldavite earring",back="Etoile cape"})
	                                           
	sets.precast.WS['Dancing Edge']            = set_combine(sets.precast.WS,{neck="Breeze gorget",back="Etoile cape"})
	sets.precast.WS['Dancing Edge'].HNM        = set_combine(sets.precast.WS['Dancing Edge'],{back="Cerberus mantle +1"})
	                                           
	sets.precast.WS['Exenterator']             = set_combine(sets.precast.WS,{neck="Thunder gorget",back="Etoile cape"})
	sets.precast.WS['Exenterator'].HNM         = set_combine(sets.precast.WS['Exenterator'],{back="Cerberus mantle +1"})
	                                           
	sets.precast.WS['Evisceration']            = set_combine(sets.precast.WS,{neck="Shadow gorget",back="Etoile cape"})
	sets.precast.WS['Evisceration'].HNM        = set_combine(sets.precast.WS['Evisceration'],{back="Cerberus mantle +1"})
	
end

function job_buff_change(name,gain)

	sleep_swap(name,gain)

end