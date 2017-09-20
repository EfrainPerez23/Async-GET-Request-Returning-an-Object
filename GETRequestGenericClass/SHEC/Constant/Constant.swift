//
//  Constant.swift
//  SHEC
// Efrain Perez
//  Created by Administrator on 9/3/17.
//  Copyright © 2017 Administrator. All rights reserved.
//

import Foundation



class Constant {
    
    
    struct APISHEC{
        static let APIScheme = "http"
        static let ApiHost = "MUST_BE_DONE"
        
    }
    
    
    struct Event {
        static let getAll = "event/getEvents"
        static let getEvent = "event/getEvent/"
        static let updateEvent = "event/updateEvent/"
        static let deleteEvent = "event/deleteEvent/"
    }
    
    
    struct Initiative {
        static let getAll = "initiative/getInitiatives"
        static let getEvent = "initiative/getInitiative/"
        static let updateEvent = "initiative/updateInitiatives/"
        static let deleteEvent = "initiative/deleteInitiatives/"
    }
    
    
    
}
