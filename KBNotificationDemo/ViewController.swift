//
//  ViewController.swift
//  KBNotificationDemo
//
//  Created by Jing Dai on 6/2/16.
//  Copyright © 2016 daijing. All rights reserved.
//

import UIKit
import KBNotification

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        KBNotificationCenter.defaultCenter.kb_addObserver(self, selector: "notificationReceived1:", name: "TestNotification1", object: nil)
        KBNotificationCenter.defaultCenter.kb_addObserver(self, selector: "notificationReceived2:", name: "TestNotification2", object: nil)
        
        //KBNotificationCenter.defaultCenter.kb_removeObserver(self)
        KBNotificationCenter.defaultCenter.kb_removeObserver(self, name: "TestNotification1", object: nil)
        
        KBNotificationCenter.defaultCenter.kb_postNotificationName("TestNotification1", object: "Hello World1")
        KBNotificationCenter.defaultCenter.kb_postNotificationName("TestNotification2", object: "Hello World2")
    }
    
    func notificationReceived1(notification: KBNotification) {
        print(notification.object);
    }
    
    func notificationReceived2(notification: KBNotification) {
        print(notification.object);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

