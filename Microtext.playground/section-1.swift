//
//    ___    ___       __   ___  ________ _________
//  _|\  \__|\  \     |\  \|\  \|\  _____\\___   ___\
// |\   ____\ \  \    \ \  \ \  \ \  \__/\|___ \  \_|
// \ \  \___|\ \  \  __\ \  \ \  \ \   __\    \ \  \
//  \ \_____  \ \  \|\__\_\  \ \  \ \  \_|     \ \  \
//   \|____|\  \ \____________\ \__\ \__\       \ \__\
//     ____\_\  \|____________|\|__|\|__|        \|__|
//    |\___    __\
//    \|___|\__\_|
//         \|__|
//
//  Microtext.swift
//  Microtext
//
//  Created by Rodrigo Alves
//  Copyright (c) 2015 Rodrigo Alves. All rights reserved.
//

import C

// Extensions to the String class
extension String {
    func trim() -> String {
        return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
}

class Microtext {
    
    /**
    * A function that takes a sentence as argument and returns the initials
    * of the terms of the given sentence
    */
    class func getInitials(text: String) -> String {
        var brokenNames = breakSentence(text)
        var abbrevName: String;
        
        var nameList: [String] = []
        
        for name in brokenNames {
            nameList.append(Array(arrayLiteral: name)[0])
        }
        
        if nameList.count > 1 {
            return ". ".join(nameList)
        }
        
        return ""
    }
    
    class func breakSentence(text: String) -> [String] {
        return split(text.trim()) {$0 == " "}
    }
    
    class func abbrevName(text: String) -> String {
        return ""
    }
    
    class func truncate(text: String, limit: Int) -> String {
        return ""
    }
    
    /**
    * A function that takes a sentence as argument
    * and return its first word
    */
    class func firstName(text: String) -> String {
        return breakSentence(text)[0]
    }
    
    class func lastName(text: String) -> String {
        var brokenNames = breakSentence(text);
        
        if brokenNames.count > 1 {
            return brokenNames[brokenNames.count - 1]
        } else if brokenNames.count == 1 {
            return firstName(text)
        }
        
        return ""
    }
    
    class func excerpt(text: String, marker: String) -> String {
        return ""
    }
    
    class func hideEmail(text: String) -> String {
        return ""
    }
    
    class func parameterize(text: String) -> String {
        var temp = text.trim().lowercaseString
        
        // TODO: actually implement this method
        return temp
    }
    
    class func hideBadWord(text: String) -> String {
        var rand: Int
        var answer = String(text[text.startIndex])
        var replacements = ["@", "!", "$", "#", "&", "*"];
        
        
        
        for (var i = 1; i < countElements(replacements) - 1; i += 1) {
            let rand = Int(arc4random_uniform(UInt32(replacements.count - 1)))
            
            //            if String(text[0]) == " " {
            //                answer.append(" ")
        }
        
        if (text.[i] === " ") {
            answer += " ";
        } else {
            answer += replacements[rand];
        }
    }
    
    
    return answer
}
}