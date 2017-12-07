//
//  ViewControllerSecend.swift
//  FirstOCSwift
//
//  Created by zcw on 2017/12/7.
//  Copyright © 2017年 zcw. All rights reserved.
//

import UIKit

class ViewControllerSecend: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel()
        label.text = "second";
        label.frame = CGRect(x:100,y:100,width:100,height:100)
        
        
        
        label.target(forAction: #selector(goback), withSender: nil)

        self.view.backgroundColor = UIColor.white
        
        self.view.addSubview(label)
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func goback(){
        self.navigationController?.popToRootViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
