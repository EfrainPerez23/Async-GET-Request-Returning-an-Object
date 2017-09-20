//
//  Query.swift
//  SHEC
// Efrain Perez
//  Created by Administrator on 9/3/17.
//  Copyright © 2017 Administrator. All rights reserved.
//

import Foundation



class Util {
    
    
    public func escapedParameters(_ parameters: [String:AnyObject]) -> String {
        
        if parameters.isEmpty {
            return ""
        } else {
            var keyValuePairs = [String]()
            
            for (key, value) in parameters {
                
                // make sure that it is a string value
                let stringValue = "\(value)"
                
                // escape it
                let escapedValue = stringValue.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
                
                // append it
                keyValuePairs.append(key + "=" + "\(escapedValue!)")
                
            }
            
            return "?\(keyValuePairs.joined(separator: "&"))"
        }
    }
    
    public static func  displayError(_ error: String, _ url: String) {
        print(error)
        print("URL at time of error: \(url)")
    }
    
   
}
