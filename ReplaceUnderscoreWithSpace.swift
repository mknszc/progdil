func ReplaceUnderscoreWithSpace(myString:String) -> String {
    var startIndex = 0
    var endIndex = 0
<<<<<<< HEAD
    var array = Array(myString)
    for var i = 0; i < array.count; ++i {
        if (array[i] != "_") {
            startIndex = i
=======
    var array = [""]
    var newString = ""
    for character in myString {
        array.append(String(character))
        
    }
    for var index = 1; index < array.count; ++index {
        if (array[index] != "_") {
            startIndex = index
>>>>>>> 43b8a31ad806598cb912ea49e8ca5a502f462c5f
            break
            
        }
        
    }
<<<<<<< HEAD
    for var j = 0; j < array.count; ++j {
        if (array[j] != "_") {
            endIndex = j
=======
    for var index = 0; index < array.count; ++index {
        if (array[index] != "_") {
            endIndex = index
>>>>>>> 43b8a31ad806598cb912ea49e8ca5a502f462c5f
            
        }
        
    }
<<<<<<< HEAD
    for var k = startIndex; k < endIndex; ++k {
        if (array[k] == "_") {
            array[k] = " "
=======
    for var index = startIndex; index < endIndex; ++index {
        if (array[index] == "_") {
            array[index] = " "
>>>>>>> 43b8a31ad806598cb912ea49e8ca5a502f462c5f
            
        }
        
    }
<<<<<<< HEAD
    var newString = String(array)
    return newString
    
}

var object = ReplaceUnderscoreWithSpace("__foo_bar__")
println(object)
=======
    for var index = 0; index < array.count; ++index {
        newString += array[index]
        
    }
    return newString
    
}
println(ReplaceUnderscoreWithSpace("__foo___bar__"))
>>>>>>> 43b8a31ad806598cb912ea49e8ca5a502f462c5f
