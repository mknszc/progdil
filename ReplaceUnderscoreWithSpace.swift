class ReplaceUnderScoreWithSpace {
    let myString: String
    init(_ myString: String) {
        self.myString = myString
        
    }
    func replaceUnderscoreWithSpace() -> String {
        var startIndex = 0
        var endIndex = 0
        var array = Array(self.myString)
        for var i = 0; i < array.count; ++i {
            if (array[i] != "_") {
                startIndex = i
                break
            }
        }
        for var j = 0; j < array.count; ++j {
            if (array[j] != "_") {
                endIndex = j
            }
        }
        for var k = startIndex; k < endIndex; ++k {
            if (array[k] == "_") {
                array[k] = " "
            }
        }
        return String(array)
    }
}

var newObject = ReplaceUnderScoreWithSpace("__foo__bar__")
println(newObject.replaceUnderscoreWithSpace())

