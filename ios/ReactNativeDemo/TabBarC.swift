//
//  TabBarC.swift
//  ReactNativeDemo
//
//  Created by ybdjk on 2024/1/12.
//

import UIKit

class TabBarC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let homeVc = UIViewController()
        homeVc.view.backgroundColor = .systemBackground
        let homeNav = UINavigationController(rootViewController: homeVc)
        homeNav.tabBarItem = UITabBarItem(tabBarSystemItem: .recents, tag: 0)
        
        let contactVc = ContactVC()
        let contactNav = UINavigationController(rootViewController: contactVc)
        contactNav.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        
        let mineVc = UIViewController()
        mineVc.view.backgroundColor = .systemBackground
        let mineNav = UINavigationController(rootViewController: mineVc)
        mineNav.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 2)
        viewControllers = [homeNav, contactNav, mineNav]
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
