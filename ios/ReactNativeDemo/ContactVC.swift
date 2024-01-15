//
//  ContactVC.swift
//  ReactNativeDemo
//
//  Created by ybdjk on 2024/1/12.
//

import UIKit
import React

class ContactVC: UIViewController {
    
    override func loadView() {
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
        let mockData = ["scores":[["name":"Alex", "value":"42"],["name":"Joel", "value": "10"]]]
        let rootView = RCTRootView(bundleURL: jsCodeLocation, moduleName: "UIDemo", initialProperties: mockData)
        view = rootView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
