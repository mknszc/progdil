import Foundation

var has: Dictionary<String, Dictionary<String, Array<String>>> = [
    "tr" : [
        "isim" : [
            "Ali",
            "Veli"
        ],
        "sıfat" : [
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
var dizi = [""]
let arrayName = has["tr"]!["sıfat"]!
let arrayAddjetive = has["tr"]!["isim"]!
let dictionaryLenght = (arrayName.count)*(arrayAddjetive.count)
func join(s1: String, s2: String, joiner: String = " ") -> String {
    return s1 + joiner + s2
}
extension Array {
    func randomItem() -> Int {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return index
    }
}
while (dizi.count <= dictionaryLenght) {
    let a = join((arrayName[arrayName.randomItem()]), arrayAddjetive[arrayAddjetive.randomItem()], joiner: " ")    
    if (contains(dizi, a) == false){
        dizi.append(a)
        
    }
}

