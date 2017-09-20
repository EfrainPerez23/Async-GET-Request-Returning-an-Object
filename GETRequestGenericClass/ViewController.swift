//
//  ViewController.swift
//
//  Created by Administrator on 9/3/17.
//  Copyright © 2017 Administrator. All rights reserved.
//  Author: Efrain Perez
//  email: efrain.abperez23@gmail.com

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Events(_ sender: Any) {
        DispatchQueue.global(qos: .userInitiated).async {
            // YOU CAN CHANGE THE 'Initiative Class' to the object that you want to recieve for example
            // if you have another class call 'Client' you only have to change the Generic class
            
            // example = RequestMethod<Client>().taskForGETMethod...
            
            let _ = RequestMethod<Initiative>().taskForGETMethod(URL(string: "YOUR_URL_API")!, completionHandlerForGET: { (result, error) in
                if let error = error {
                    print("no", error)
                    return
                }else{
                    guard let dataArray = result else{
                        return
                    }
                    for data in dataArray {
                        print(data.getId()!, data.getName()!)
                    }
                }
            })
        }
        
    }
}

