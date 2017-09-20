//
//  Iniative.swift
//  SHEC
// Efrain Perez
//  Created by Administrator on 9/3/17.
//  Copyright © 2017 Administrator. All rights reserved.
//

import Foundation


class Initiative{
    private var id: Int?
    private var name: String?
    private var description: String?
    private var imageUrl: String?
    private var events: [Event]?
    
    
    
    public func getId() -> Int? {
        return self.id
    }
    
    public func setId(_ id: Int?) {
        self.id = id
    }
    
    public func getName() -> String?{
        return self.name
    }
    
    public func setName(_ name: String?){
        self.name = name
    }
    
    public func getDescription() -> String? {
        return self.description
    }
    
    
    public func getImageUrl()-> String? {
        return self.imageUrl
    }
    
    
    public func setImageUrl(_ imageUrl: String?) {
        self.imageUrl = imageUrl
    }
    
    public func getEvents() -> [Event]? {
        return self.events
    }
    
    public func setEvents(_ events: [Event]) {
        self.events = events
    }
    
    
    
    
}
