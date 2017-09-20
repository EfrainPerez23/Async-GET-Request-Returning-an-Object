//
//  Event.swift
// Efrain Perez
//  Created by Administrator on 9/3/17.
//  Copyright © 2017 Administrator. All rights reserved.
// efrain.abperez23@gmail.com

import Foundation


class Event: Decodable {
    
    private var id: Int?
    private var name: String?
    private var description: String?
    
    
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
    
    
}

