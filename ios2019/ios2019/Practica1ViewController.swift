//
//  Practica1ViewController.swift
//  ios2019
//
//  Created by Ivan Ibarra on 2/7/19.
//  Copyright © 2019 Ivan Ibarra. All rights reserved.
//

import UIKit

class Practica1ViewController: UIViewController {
    @IBOutlet weak var txtNum1: UITextField!
    @IBOutlet weak var txtNum2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Practica1"
    }
    

    @IBAction func suma(_ sender: Any) {
        
        
        let num1 = Int(txtNum1.text!)!
        let num2 = Int(txtNum2.text!)!
        let suma =   Int(num1 + num2)
        
        let alert = UIAlertController(title: "resultado", message: "\(suma)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("La suma es \(suma)")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    /*
     @IBAction func btnSuma(_ sender: Any) {
     }
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
