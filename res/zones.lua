local zones = {
    [0] = { full = "unknown", short = "unknown" },
    [1] = { full = "Phanauet Channel", short = "PhanauetCh" },
    [2] = { full = "Carpenters' Landing", short = "CpntLanding" },
    [3] = { full = "Manaclipper", short = "Manaclipper" },
    [4] = { full = "Bibiki Bay", short = "BibikiBay" },
    [5] = { full = "Uleguerand Range", short = "Uleguerand" },
    [6] = { full = "Bearclaw Pinnacle", short = "BearclawPn" },
    [7] = { full = "Attohwa Chasm", short = "AttohwaCsm" },
    [8] = { full = "Boneyard Gully", short = "BoneyardGl" },
    [9] = { full = "Pso'Xja", short = "PsoXja" },
    [10] = { full = "The Shrouded Maw", short = "ShroudMaw" },
    [11] = { full = "Oldton Movalpolos", short = "OldMoval" },
    [12] = { full = "Newton Movalpolos", short = "NewMoval" },
    [13] = { full = "Mine Shaft #2716", short = "Mine2716" },
    [14] = { full = "Hall of Transference", short = "HallOfTrns" },
    [15] = { full = "Abyssea - Konschtat", short = "AbysKonscht" },
    [16] = { full = "Promyvion - Holla", short = "PromvHolla" },
    [17] = { full = "Spire of Holla", short = "SpireHolla" },
    [18] = { full = "Promyvion - Dem", short = "PromvDem" },
    [19] = { full = "Spire of Dem", short = "SpireDem" },
    [20] = { full = "Promyvion - Mea", short = "PromvMea" },
    [21] = { full = "Spire of Mea", short = "SpireMea" },
    [22] = { full = "Promyvion - Vahzl", short = "PromvVahzl" },
    [23] = { full = "Spire of Vahzl", short = "SpireVahzl" },
    [24] = { full = "Lufaise Meadows", short = "LufaiseMds" },
    [25] = { full = "Misareaux Coast", short = "Misareaux" },
    [26] = { full = "Tavnazian Safehold", short = "TavSafehld" },
    [27] = { full = "Phomiuna Aqueducts", short = "PhomiunaAq" },
    [28] = { full = "Sacrarium", short = "Sacrarium" },
    [29] = { full = "Riverne - Site #B01", short = "RiverneB01" },
    [30] = { full = "Riverne - Site #A01", short = "RiverneA01" },
    [31] = { full = "Monarch Linn", short = "MonarchLinn" },
    [32] = { full = "Sealion's Den", short = "SealionDen" },
    [33] = { full = "Al'Taieu", short = "AlTaieu" },
    [34] = { full = "Grand Palace of Hu'Xzoi", short = "HuXzoi" },
    [35] = { full = "The Garden of Ru'Hmet", short = "RuHmet" },
    [36] = { full = "Empyreal Paradox", short = "EmParadox" },
    [37] = { full = "Temenos", short = "Temenos" },
    [38] = { full = "Apollyon", short = "Apollyon" },
    [39] = { full = "Dynamis - Valkurm", short = "DynamisVal" },
    [40] = { full = "Dynamis - Buburimu", short = "DynamisBub" },
    [41] = { full = "Dynamis - Qufim", short = "DynamisQuf" },
    [42] = { full = "Dynamis - Tavnazia", short = "DynamisTav" },
    [43] = { full = "Diorama Abdhaljs-Ghelsba", short = "DioramaGhel" },
    [44] = { full = "Abdhaljs Isle-Purgonorgo", short = "AbdhalPurgo" },
    [45] = { full = "Abyssea - Tahrongi", short = "AbysTahrongi" },
    [46] = { full = "Open sea route to Al Zahbi", short = "OpenseaZah" },
    [47] = { full = "Open sea route to Mhaura", short = "OpenseaMha" },
    [48] = { full = "Al Zahbi", short = "AlZahbi" },
    [50] = { full = "Aht Urhgan Whitegate", short = "Whitegate" },
    [51] = { full = "Wajaom Woodlands", short = "Wajaom" },
    [52] = { full = "Bhaflau Thickets", short = "BhafThicket" },
    [53] = { full = "Nashmau", short = "Nashmau" },
    [54] = { full = "Arrapago Reef", short = "ArrpgoReef" },
    [55] = { full = "Ilrusi Atoll", short = "Ilrusi" },
    [56] = { full = "Periqia", short = "Periqia" },
    [57] = { full = "Talacca Cove", short = "Talacca" },
    [58] = { full = "Silver Sea route to Nashmau", short = "SilvSeaNas" },
    [59] = { full = "Silver Sea route to Al Zahbi", short = "SilvSeaZah" },
    [60] = { full = "The Ashu Talif", short = "AshuTalif" },
    [61] = { full = "Mount Zhayolm", short = "MtZhayolm" },
    [62] = { full = "Halvung", short = "Halvung" },
    [63] = { full = "Lebros Cavern", short = "Lebros" },
    [64] = { full = "Navukgo Execution Chamber", short = "Navukgo" },
    [65] = { full = "Mamook", short = "Mamook" },
    [66] = { full = "Mamool Ja Training Grounds", short = "MamoolTrGr" },
    [67] = { full = "Jade Sepulcher", short = "JadeSepul" },
    [68] = { full = "Aydeewa Subterrane", short = "Aydeewa" },
    [69] = { full = "Leujaoam Sanctum", short = "Leujaoam" },
    [70] = { full = "Chocobo Circuit", short = "ChocoCirc" },
    [71] = { full = "The Colosseum", short = "Colosseum" },
    [72] = { full = "Alzadaal Undersea Ruins", short = "AlzaUndrsea" },
    [73] = { full = "Zhayolm Remnants", short = "ZhaylmRem" },
    [74] = { full = "Arrapago Remnants", short = "ArrpgoRem" },
    [75] = { full = "Bhaflau Remnants", short = "BhaflauRem" },
    [76] = { full = "Silver Sea Remnants", short = "SilvSeaRem" },
    [77] = { full = "Nyzul Isle", short = "Nyzul" },
    [78] = { full = "Hazhalm Testing Grounds", short = "Hazhalm" },
    [79] = { full = "Caedarva Mire", short = "Caedarva" },
    [80] = { full = "Southern San d'Oria [S]", short = "SSandOria_S" },
    [81] = { full = "East Ronfaure [S]", short = "ERonfaure_S" },
    [82] = { full = "Jugner Forest [S]", short = "Jugner_S" },
    [83] = { full = "Vunkerl Inlet [S]", short = "Vunkerl_S" },
    [84] = { full = "Batallia Downs [S]", short = "Batallia_S" },
    [85] = { full = "La Vaule [S]", short = "LaVaule_S" },
    [86] = { full = "Everbloom Hollow", short = "Everbloom" },
    [87] = { full = "Bastok Markets [S]", short = "BasMarket_S" },
    [88] = { full = "North Gustaberg [S]", short = "NGustabrg_S" },
    [89] = { full = "Grauberg [S]", short = "Grauberg_S" },
    [90] = { full = "Pashhow Marshlands [S]", short = "Pashhow_S" },
    [91] = { full = "Rolanberry Fields [S]", short = "RolFields_S" },
    [92] = { full = "Beadeaux [S]", short = "Beadeaux_S" },
    [93] = { full = "Ruhotz Silvermines", short = "Ruhotz" },
    [94] = { full = "Windurst Waters [S]", short = "WinWaters_S" },
    [95] = { full = "West Sarutabaruta [S]", short = "WSaruta_S" },
    [96] = { full = "Fort Karugo-Narugo [S]", short = "FortK-N_S" },
    [97] = { full = "Meriphataud Mountains [S]", short = "MeriMount_S" },
    [98] = { full = "Sauromugue Champaign [S]", short = "SaurChamp_S" },
    [99] = { full = "Castle Oztroja [S]", short = "Oztroja_S" },
    [100] = { full = "West Ronfaure", short = "WRonfaure" },
    [101] = { full = "East Ronfaure", short = "ERonfaure" },
    [102] = { full = "La Theine Plateau", short = "LaTheine" },
    [103] = { full = "Valkurm Dunes", short = "Valkurm" },
    [104] = { full = "Jugner Forest", short = "Jugner" },
    [105] = { full = "Batallia Downs", short = "Batallia" },
    [106] = { full = "North Gustaberg", short = "NGustaberg" },
    [107] = { full = "South Gustaberg", short = "SGustaberg" },
    [108] = { full = "Konschtat Highlands", short = "Konschtat" },
    [109] = { full = "Pashhow Marshlands", short = "Pashhow" },
    [110] = { full = "Rolanberry Fields", short = "Rolanberry" },
    [111] = { full = "Beaucedine Glacier", short = "Beaucedine" },
    [112] = { full = "Xarcabard", short = "Xarcabard" },
    [113] = { full = "Cape Teriggan", short = "Teriggan" },
    [114] = { full = "Eastern Altepa Desert", short = "EastAltepa" },
    [115] = { full = "West Sarutabaruta", short = "WSartabarta" },
    [116] = { full = "East Sarutabaruta", short = "ESartabarta" },
    [117] = { full = "Tahrongi Canyon", short = "Tahrongi" },
    [118] = { full = "Buburimu Peninsula", short = "Buburimu" },
    [119] = { full = "Meriphataud Mountains", short = "Meriphataud" },
    [120] = { full = "Sauromugue Champaign", short = "Sauromugue" },
    [121] = { full = "The Sanctuary of Zi'Tah", short = "ZiTah" },
    [122] = { full = "Ro'Maeve", short = "RoMaeve" },
    [123] = { full = "Yuhtunga Jungle", short = "YuhtunJng" },
    [124] = { full = "Yhoator Jungle", short = "YhoatorJng" },
    [125] = { full = "Western Altepa Desert", short = "WestAltepa" },
    [126] = { full = "Qufim Island", short = "Qufim" },
    [127] = { full = "Behemoth's Dominion", short = "BehemotDom" },
    [128] = { full = "Valley of Sorrows", short = "SorrowVall" },
    [129] = { full = "Ghoyu's Reverie", short = "GhoyusRev" },
    [130] = { full = "Ru'Aun Gardens", short = "RuAunGard" },
    [131] = { full = "Mordion Gaol", short = "Mordion" },
    [132] = { full = "Abyssea - La Theine", short = "AbysLaThein" },
    [133] = { full = "Outer Ra'Kaznar [U2]", short = "OutRaKaz_U2" },
    [134] = { full = "Dynamis - Beaucedine", short = "DynamisBcd" },
    [135] = { full = "Dynamis - Xarcabard", short = "DynamisXar" },
    [136] = { full = "Beaucedine Glacier [S]", short = "BeaGlacier_S" },
    [137] = { full = "Xarcabard [S]", short = "Xarcabard_S" },
    [138] = { full = "Castle Zvahl Baileys [S]", short = "ZvBaileys_S" },
    [139] = { full = "Horlais Peak", short = "HorlaisPk" },
    [140] = { full = "Ghelsba Outpost", short = "GhelsbaOp" },
    [141] = { full = "Fort Ghelsba", short = "FtGhelsba" },
    [142] = { full = "Yughott Grotto", short = "Yughott" },
    [143] = { full = "Palborough Mines", short = "Palborough" },
    [144] = { full = "Waughroon Shrine", short = "Waughroon" },
    [145] = { full = "Giddeus", short = "Giddeus" },
    [146] = { full = "Balga's Dais", short = "BalgasDais" },
    [147] = { full = "Beadeaux", short = "Beadeaux" },
    [148] = { full = "Qulun Dome", short = "QulunDome" },
    [149] = { full = "Davoi", short = "Davoi" },
    [150] = { full = "Monastic Cavern", short = "MonastiCav" },
    [151] = { full = "Castle Oztroja", short = "Oztroja" },
    [152] = { full = "Altar Room", short = "AltarRoom" },
    [153] = { full = "The Boyahda Tree", short = "Boyahda" },
    [154] = { full = "Dragon's Aery", short = "DragonAery" },
    [155] = { full = "Castle Zvahl Keep [S]", short = "ZvKeep_S" },
    [156] = { full = "Throne Room [S]", short = "ThroneRm_S" },
    [157] = { full = "Middle Delkfutt's Tower", short = "MidDelkfut" },
    [158] = { full = "Upper Delkfutt's Tower", short = "UpDelkfut" },
    [159] = { full = "Temple of Uggalepih", short = "Uggalepih" },
    [160] = { full = "Den of Rancor", short = "RancorDen" },
    [161] = { full = "Castle Zvahl Baileys", short = "ZvahlBails" },
    [162] = { full = "Castle Zvahl Keep", short = "ZvahlKeep" },
    [163] = { full = "Sacrificial Chamber", short = "SacriChamb" },
    [164] = { full = "Garlaige Citadel [S]", short = "Garlaige_S" },
    [165] = { full = "Throne Room", short = "ThroneRoom" },
    [166] = { full = "Ranguemont Pass", short = "Ranguemont" },
    [167] = { full = "Bostaunieux Oubliette", short = "Bostaunieu" },
    [168] = { full = "Chamber of Oracles", short = "OracleChmb" },
    [169] = { full = "Toraimarai Canal", short = "Toraimarai" },
    [170] = { full = "Full Moon Fountain", short = "FullMoonFn" },
    [171] = { full = "Crawlers' Nest [S]", short = "CrawlNest_S" },
    [172] = { full = "Zeruhn Mines", short = "Zeruhn" },
    [173] = { full = "Korroloka Tunnel", short = "Korroloka" },
    [174] = { full = "Kuftal Tunnel", short = "Kuftal" },
    [175] = { full = "The Eldieme Necropolis [S]", short = "Eldieme_S" },
    [176] = { full = "Sea Serpent Grotto", short = "SeaGrotto" },
    [177] = { full = "Ve'Lugannon Palace", short = "VeLugannon" },
    [178] = { full = "The Shrine of Ru'Avitau", short = "RuAvitau" },
    [179] = { full = "Stellar Fulcrum", short = "StlrFulcrm" },
    [180] = { full = "La'Loff Amphitheater", short = "LaLoff" },
    [181] = { full = "The Celestial Nexus", short = "CelesNexus" },
    [182] = { full = "Walk of Echoes", short = "WalkEchoes" },
    [183] = { full = "Maquette Abdhaljs-LegionA", short = "LegionA" },
    [184] = { full = "Lower Delkfutt's Tower", short = "LowDelkfut" },
    [185] = { full = "Dynamis - San d'Oria", short = "DynamisSan" },
    [186] = { full = "Dynamis - Bastok", short = "DynamisBas" },
    [187] = { full = "Dynamis - Windurst", short = "DynamisWin" },
    [188] = { full = "Dynamis - Jeuno", short = "DynamisJeu" },
    [189] = { full = "Outer Ra'Kaznar [U3]", short = "OutRaKaz_U3" },
    [190] = { full = "King Ranperre's Tomb", short = "RanpsTomb" },
    [191] = { full = "Dangruf Wadi", short = "Dangruf" },
    [192] = { full = "Inner Horutoto Ruins", short = "InHorutoto" },
    [193] = { full = "Ordelle's Caves", short = "Ordelles" },
    [194] = { full = "Outer Horutoto Ruins", short = "OutHorutot" },
    [195] = { full = "The Eldieme Necropolis", short = "Eldieme" },
    [196] = { full = "Gusgen Mines", short = "Gusgen" },
    [197] = { full = "Crawlers' Nest", short = "CrawlNest" },
    [198] = { full = "Maze of Shakhrami", short = "Shakhrami" },
    [200] = { full = "Garlaige Citadel", short = "Garlaige" },
    [201] = { full = "Cloister of Gales", short = "ClstGales" },
    [202] = { full = "Cloister of Storms", short = "ClstStorms" },
    [203] = { full = "Cloister of Frost", short = "ClstFrost" },
    [204] = { full = "Fei'Yin", short = "FeiYin" },
    [205] = { full = "Ifrit's Cauldron", short = "IfritCldrn" },
    [206] = { full = "Qu'Bia Arena", short = "QuBiaArena" },
    [207] = { full = "Cloister of Flames", short = "ClstFlames" },
    [208] = { full = "Quicksand Caves", short = "Quicksands" },
    [209] = { full = "Cloister of Tremors", short = "ClstTremor" },
    [211] = { full = "Cloister of Tides", short = "ClstTides" },
    [212] = { full = "Gustav Tunnel", short = "Gustav" },
    [213] = { full = "Labyrinth of Onzozo", short = "Onzozo" },
    [215] = { full = "Abyssea - Attohwa", short = "AbysAttohwa" },
    [216] = { full = "Abyssea - Misareaux", short = "AbysMisar" },
    [217] = { full = "Abyssea - Vunkerl", short = "AbysVunkerl" },
    [218] = { full = "Abyssea - Altepa", short = "AbysAltepa" },
    [220] = { full = "Ship bound for Selbina", short = "ShipToSelb" },
    [221] = { full = "Ship bound for Mhaura", short = "ShipToMhau" },
    [222] = { full = "Provenance", short = "Provenance" },
    [223] = { full = "San d'Oria-Jeuno Airship", short = "Airship" },
    [224] = { full = "Bastok-Jeuno Airship", short = "Airship" },
    [225] = { full = "Windurst-Jeuno Airship", short = "Airship" },
    [226] = { full = "Kazham-Jeuno Airship", short = "Airship" },
    [227] = { full = "Ship bound for Selbina", short = "ShipToSelb" },
    [228] = { full = "Ship bound for Mhaura", short = "ShipToMhau" },
    [229] = { full = "Throne Room [V]", short = "ThroneRm_V" },
    [230] = { full = "Southern San d'Oria", short = "SSandOria" },
    [231] = { full = "Northern San d'Oria", short = "NSandOria" },
    [232] = { full = "Port San d'Oria", short = "PSandOria" },
    [233] = { full = "Chateau d'Oraguille", short = "ChatdOrag" },
    [234] = { full = "Bastok Mines", short = "BastokMine" },
    [235] = { full = "Bastok Markets", short = "BastokMark" },
    [236] = { full = "Port Bastok", short = "PortBastok" },
    [237] = { full = "Metalworks", short = "Metalworks" },
    [238] = { full = "Windurst Waters", short = "WindWaters" },
    [239] = { full = "Windurst Walls", short = "WindWalls" },
    [240] = { full = "Port Windurst", short = "PortWind" },
    [241] = { full = "Windurst Woods", short = "WindWoods" },
    [242] = { full = "Heavens Tower", short = "HeavenTowr" },
    [243] = { full = "Ru'Lude Gardens", short = "RuLudeGard" },
    [244] = { full = "Upper Jeuno", short = "UpJeuno" },
    [245] = { full = "Lower Jeuno", short = "LowJeuno" },
    [246] = { full = "Port Jeuno", short = "PortJeuno" },
    [247] = { full = "Rabao", short = "Rabao" },
    [248] = { full = "Selbina", short = "Selbina" },
    [249] = { full = "Mhaura", short = "Mhaura" },
    [250] = { full = "Kazham", short = "Kazham" },
    [251] = { full = "Hall of the Gods", short = "HallOfGods" },
    [252] = { full = "Norg", short = "Norg" },
    [253] = { full = "Abyssea - Uleguerand", short = "AbysUleg" },
    [254] = { full = "Abyssea - Grauberg", short = "AbysGraub" },
    [255] = { full = "Abyssea - Empyreal Paradox", short = "AbysParadox" },
    [256] = { full = "Western Adoulin", short = "WestAdoulin" },
    [257] = { full = "Eastern Adoulin", short = "EastAdoulin" },
    [258] = { full = "Rala Waterways", short = "Rala" },
    [259] = { full = "Rala Waterways [U]", short = "Rala_U" },
    [260] = { full = "Yahse Hunting Grounds", short = "Yahse" },
    [261] = { full = "Ceizak Battlegrounds", short = "Ceizak" },
    [262] = { full = "Foret de Hennetiel", short = "Hennetiel" },
    [263] = { full = "Yorcia Weald", short = "Yorcia" },
    [264] = { full = "Yorcia Weald [U]", short = "Yorcia_U" },
    [265] = { full = "Morimar Basalt Fields", short = "Morimar" },
    [266] = { full = "Marjami Ravine", short = "Marjami" },
    [267] = { full = "Kamihr Drifts", short = "Kamihr" },
    [268] = { full = "Sih Gates", short = "SihGates" },
    [269] = { full = "Moh Gates", short = "MohGates" },
    [270] = { full = "Cirdas Caverns", short = "Cirdas" },
    [271] = { full = "Cirdas Caverns [U]", short = "Cirdas_U" },
    [272] = { full = "Dho Gates", short = "DhoGates" },
    [273] = { full = "Woh Gates", short = "WohGates" },
    [274] = { full = "Outer Ra'Kaznar", short = "OutRaKaz" },
    [275] = { full = "Outer Ra'Kaznar [U1]", short = "OutRaKaz_U1" },
    [276] = { full = "Ra'Kaznar Inner Court", short = "InRaKaz" },
    [277] = { full = "Ra'Kaznar Turris", short = "RaKazTurris" },
    [278] = { full = "Gwora - Corridor", short = "GworaCorr" },
    [279] = { full = "Walk of Echoes [P2]", short = "WlkEchoes_P2" },
    [280] = { full = "Mog Garden", short = "MogGarden" },
    [281] = { full = "Leafallia", short = "Leafallia" },
    [282] = { full = "Mount Kamihr", short = "MtKamihr" },
    [283] = { full = "Silver Knife", short = "SilverKnife" },
    [284] = { full = "Celennia Memorial Library", short = "Celennia" },
    [285] = { full = "Feretory", short = "Feretory" },
    [287] = { full = "Maquette Abdhaljs-LegionB", short = "LegionB" },
    [288] = { full = "Escha - Zi'Tah", short = "EschaZiTah" },
    [289] = { full = "Escha - Ru'Aun", short = "EschaRuAun" },
    [290] = { full = "Desuetia - Empyreal Paradox", short = "DesParadox" },
    [291] = { full = "Reisenjima", short = "Reisenjima" },
    [292] = { full = "Reisenjima Henge", short = "ReisenHenge" },
    [293] = { full = "Reisenjima Sanctorium", short = "ReisenSanc" },
    [294] = { full = "Dynamis - San d'Oria [D]", short = "DynamisSan_D" },
    [295] = { full = "Dynamis - Bastok [D]", short = "DynamisBas_D" },
    [296] = { full = "Dynamis - Windurst [D]", short = "DynamisWin_D" },
    [297] = { full = "Dynamis - Jeuno [D]", short = "DynamisJeu_D" },
    [298] = { full = "Walk of Echoes [P1]", short = "WlkEchoes_P1" },
    [299] = { full = "Gwora - Throne Room", short = "GworaThrone" },
}
return zones