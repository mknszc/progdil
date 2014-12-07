func ReplaceUnderscoreWithSpace(myString:String) -> String {
    var startIndex = 0
    var endIndex = 0
    var array = Array(myString)
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
    var newString = String(array)
    return newString
}

println(ReplaceUnderscoreWithSpace("__foo_bar__"))
            
        }
        
    }
    for var index = 0; index < array.count; ++index {
        newString += array[index]
        
    }
    return newString
    
}
var myString = "foo_bar"
ReplaceUnderscoreWithSpace()
