//
//  SonarViewController.swift
//  ios2019
//
//  Created by Admin on 3/6/19.
//  Copyright © 2019 Ivan Ibarra. All rights reserved.
//

import UIKit
import SwiftySound

class SonarViewController: UIViewController {
    private var mySound: Sound?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.title = "Sonar"
        // Do any additional setup after loading the view.
        Sound.enabled = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func Sonar(_ sender: Any) {
        if let URL = Bundle.main.url(forResource: "cat", withExtension: "wav") {
            mySound = Sound(url: URL)
        }
        
        mySound?.play{ completed in
            print("completado \(completed)")
            self.navigationController?.popToRootViewController(animated: true)
        }
        
    }
    
}
