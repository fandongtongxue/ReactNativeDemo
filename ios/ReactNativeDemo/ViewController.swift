//
//  ViewController.swift
//  ReactNativeDemo
//
//  Created by ybdjk on 2024/1/9.
//

import UIKit
import React

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openRNPage(_ sender: Any) {
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
        let mockData = ["scores":[["name":"Alex", "value":"42"],["name":"Joel", "value": "10"]]]
        let rootView = RCTRootView(bundleURL: jsCodeLocation, moduleName: "RNHighScores", initialProperties: mockData)
        let vc = UIViewController()
        vc.view = rootView
        present(vc, animated: true)
    }
    
}

