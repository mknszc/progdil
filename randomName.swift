class RandomName {
    var language: String
    var lenght: Int
    var count: Int = 0
    var array: Array<String> = []
    var has: Dictionary<String, Dictionary<String, Array<String>>> = [
        "tr" : [
            "name" : [
		"aslan",
		"bacak",
		"cezve",	
		"çakmak",
		"damat",
		"erik",
		"fil",
		"gamze",
		"halı",
		"ıstaka",
		"iğne",
		"joker",
		"kabadayı",
		"lamba",
		"mektup",
		"ney",
		"ordu",
		"öykü",
		"para",
		"rakı",
		"sakal",
		"şiir",
		"tabut",
		"ustura",
		"üniversite",
		"vazo",
		"yağmur",
		"zeytin"
	    ],
            "adjective" : [
                "az",
		"beceriksiz",
		"cahil",
		"çirkin",
		"düzgün",
		"elemli",
		"fırsatçı",
		"güzel",
		"hızlı",
		"ısrarcı",
		"istekli",
		"jöleli",
		"kibar",
		"lezzetli",
		"mazlum",
		"nazik",
		"olgun",
		"özel",
		"pürüzsüz",
		"rahat",
		"soğuk",
		"şirin",
		"tombik",
		"ucuz",
		"üzgün",
		"vefasız",
		"yalnız",
		"zifiri"
	      ]
        ],
        "en" : [
            "name" : [
                "apple",			
		"bathroom",	
		"cheek",
		"diamond",
		"ear",
		"funeral",	
		"girlfriend",
		"hat",
		"indication",
		"jayden",
		"kayden",
		"lady",
		"midnight",
		"negotiation",
		"organization",
		"pizza",
		"reputation",
		"sir",
		"trainer",
		"uncle",
		"way",
		"variety",
		"youth",
		"zero"
            ],
            "adjective" : [
                "angry",
		"basic",
		"cold",
		"different",
		"every",
		"foreign",
		"global",
		"hot",
		"impossible",
		"junior",
		"keen",
		"large",
		"mental",
		"nice",
		"old",
		"popular",	
		"quick",
		"real",
		"strong",
		"traditional",	
		"united",
		"various",
		"wonderful",
		"young"
            ]
        ]
    ]
    init(_ language: String = "tr" ,_ lenght: Int = 1 ) {
        self.language = language
        self.lenght = lenght
    
    }
    func arrayName() ->Array<String> {
        return has[self.language]!["name"]!
    
    }
    func arrayAdjective() ->Array<String> {
        return has[self.language]!["adjective"]!
    
    }
    func randomItem(count:Int) -> Int {
        let index = Int(arc4random_uniform(UInt32(count)))
        return index
    
    }
    func join()->Array<String> {
        
        let k = arrayName().count
        let j = arrayAdjective().count
        for var i = 0; array.count < lenght; i++ {
            var c = arrayAdjective()[randomItem(j)] + " " + arrayName()[randomItem(k)]
            if (contains(array, c) == false){
                array.append(c)
            }
        }
       
        return array
         
    }
}
