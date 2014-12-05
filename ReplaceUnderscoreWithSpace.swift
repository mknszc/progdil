func ReplaceUnderscoreWithSpace(myString:String) -> String {
    var startIndex = 0
    var endIndex = 0
    var array = [""]
    var newString = ""
    for character in myString {
        array.append(String(character))
        
    }
    for var index = 1; index < array.count; ++index {
        if (array[index] != "_") {
            startIndex = index
            break
            
        }
        
    }
    for var index = 0; index < array.count; ++index {
        if (array[index] != "_") {
            endIndex = index
            
        }
        
    }
    for var index = startIndex; index < endIndex; ++index {
        if (array[index] == "_") {
            array[index] = " "
            
        }
        
    }
    for var index = 0; index < array.count; ++index {
        newString += array[index]
        
    }
    return newString
    
}
println(ReplaceUnderscoreWithSpace("__foo___bar__"))
