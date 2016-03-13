//
//  ViewController.swift
//  LetsGrub
//
//  Created by adriene on 2/8/16.
//  Copyright © 2016 Group4_Swift. All rights reserved.
//

//Alamofire tutorial: http://nshipster.com/alamofire/
//Alamofire Github(HTTPRequest): https://github.com/Alamofire/Alamofire
//SwiftlyJSON Github(JSON parser): https://github.com/lingoer/SwiftyJSON

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        Alamofire.request(.GET, "https://lets-grub.herokuapp.com/recipes?country=United%20States%20of%20America")
            .responseJSON {(response) in
                if let j = response.result.value {
                    //print("JSON: \(j)")
                    let json = JSON(j)
                    print(json[0])
                    print("---------------------------------------")
                    print(json[0]["ingredients"][2])
                }
                
        }
        
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

