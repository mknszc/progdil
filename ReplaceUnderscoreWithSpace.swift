#!/usr/bin/env xcrun swift -i
import Foundation

class ReplaceUnderscoreWithSpace {
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

if Int(C_ARGC)-1 > 0 {
    for i in 1 ..< Int(C_ARGC) {
        let str = String.fromCString(C_ARGV[i])!
        let newObject = ReplaceUnderScoreWithSpace(str)
        println(newObject.replaceUnderscoreWithSpace())
    }
}
