//
//  getHttpViewController.swift
//  ios2019
//
//  Created by Admin on 5/9/19.
//  Copyright © 2019 Ivan Ibarra. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class getHttpViewController: UIViewController {

    @IBOutlet weak var OuletUserId: UITextField!
    @IBOutlet weak var OutletId: UITextField!
    @IBOutlet weak var OutletTitle: UITextField!
    @IBOutlet weak var OutletCompleted: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Alamofire.request("https://jsonplaceholder.typicode.com/todos/1").response { response in
           
            if let data = response.data, let _ = String(data: data, encoding: .utf8) {
                //print("Data: \(utf8Text)")
                let json = JSON(data)
                self.OuletUserId.text = "\(json["userId"].int!)"
                self.OutletId.text = "\(json["userId"].int!)"
                self.OutletTitle.text = "\(json["title"].string!)"
                self.OutletCompleted.text = "\(json["completed"].bool!)"
            }
        }
    }
}
