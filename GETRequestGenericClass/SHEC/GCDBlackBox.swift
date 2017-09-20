//
//  GCDBlackBox.swift
//  SHEC
//
//  Created by Administrator on 9/3/17.
//  Copyright © 2017 Administrator. All rights reserved.
//

import Foundation


func performUIUpdatesOnMain(_ updates: @escaping () -> Void) {
    
    DispatchQueue.main.async {
        updates()
    }
}
