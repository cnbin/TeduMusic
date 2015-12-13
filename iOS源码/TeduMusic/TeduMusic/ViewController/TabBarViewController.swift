//
//  TabBarViewController.swift
//  TeduMusic
//
//  Created by jiyingxin on 15/12/13.
//  Copyright © 2015年 Tarena. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    lazy var headerBar: UIView = {
        let barView = UIView()
        self.view.addSubview(barView)
        barView.snp_makeConstraints(closure: { (make) -> Void in
        })
        return barView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tabBar.hidden = true;
        self.view.addSubview(headerBar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
