//
//  Event.swift
//  SHEC
// Efrain Perez
//  Created by Administrator on 9/3/17.
//  Copyright © 2017 Administrator. All rights reserved.
//

import Foundation


class Event {
    
    private var id: Int?
    private var name: String?
    private var description: String?
    private var status: Int?
    private var startDate: String?
    private var endDate: String?
    
    
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
    
    
    public func getStatus() -> Int? {
        return self.status
    }
    
    public func setStatus(_ status: Int?) {
        self.status = status
    }
    
    public func getStartDate() -> String? {
        return self.startDate
    }
    
    public func setStartDate(_ startDate: String?) {
        self.startDate = startDate
    }
    
    public func getEndDate() -> String? {
        return self.endDate
    }
    
    public func setEndDate(_ endDate: String?) {
        self.endDate = endDate
    }
    
    
    
    
    
    
}
