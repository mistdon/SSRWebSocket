//
//  ViewController.swift
//  SSRWebSocket
//
//  Created by Don.shen on 2020/4/21.
//  Copyright © 2020 mistdon. All rights reserved.
//

import UIKit

func randomString(length: Int) -> String {
    let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    return String((0..<length).map{ _ in letters.randomElement()! })
}
class ViewController: UIViewController {
    
    var websocket: SSWebSocket?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        websocket = SSWebSocket()
        websocket?.connect(nil)
    }
    @IBAction func sendTextAction(_ sender: Any) {
        self.websocket?.sendMessage("我要说话" + randomString(length: 5))
    }
}
