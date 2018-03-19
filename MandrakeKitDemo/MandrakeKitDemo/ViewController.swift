//
//  ViewController.swift
//  MandrakeKitDemo
//
//  Created by lang on 12/03/2018.
//  Copyright © 2018 Beary Innovative. All rights reserved.
//

import UIKit
import MandrakeKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Group: =bwNQT
        //p2p: =ccZKs3pUt
        _ = MDKConfig.showConversation(cid: "=bwNQT")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

