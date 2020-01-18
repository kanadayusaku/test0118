//
//  ViewController.swift
//  MyOmikujiApp
//
//  Created by 金田祐作 on 2020/01/17.
//  Copyright © 2020 金田祐作. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBAction func getOmikuji(_ sender: Any) {
        //arc4random_uniform(n+1)
        let results = ["大吉","吉","中吉","凶","大凶"]
//        let random = arc4random_uniform(3)
        let random = arc4random_uniform(UInt32(results.count))
        self.myLabel.text = results[Int(random)]
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.layer.borderColor = UIColor.orange.cgColor
         myLabel.layer.borderWidth = 5
         myLabel.layer.cornerRadius = 50
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = myLabel.bounds.width / 2
    }


}

