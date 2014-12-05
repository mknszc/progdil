class RandomName {
    var language: String
    var lenght: Int
    var count: Int = 0
    var array: Array<String> = []
    var has: Dictionary<String, Dictionary<String, Array<String>>> = [
        "tr" : [
            "name" : [
                "Ali",
                "Veli",
            ],
            "adjective" : [
                "iyi",
                "kötü",
                "güzel"
            ]
        ],
        "en" : [
            "name" : [
                "Jack",
                "Tom"
            ],
            "adjective" : [
                "good",
                "bad",
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
