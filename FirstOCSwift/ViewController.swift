//
//  ViewController.swift
//  FirstOCSwift
//
//  Created by zcw on 2017/12/6.
//  Copyright © 2017年 zcw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton()
        button.frame = CGRect.init(x: 100, y: 100, width: 100, height: 100)
        button.setTitle("Demo", for: UIControlState.normal)
        button.setTitleColor(UIColor.black, for: UIControlState.normal)
        button.backgroundRect(forBounds: CGRect.init(x: 100, y: 100, width: 100, height: 100))
        button.backgroundColor = UIColor.green
        button.addTarget(self, action: #selector(nextPage), for: UIControlEvents.touchDown)
        
        self.view.addSubview(button)
    }
    
    @objc func nextPage(){
        let next = ViewControllerSecend()
        
//        self.present(next, animated: true, completion:
//            {print("demo")}
//
//        )
        

        self.navigationController?.pushViewController(next, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

