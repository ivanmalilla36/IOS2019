//
//  ConvertidorDeGradosViewController.swift
//  ios2019
//
//  Created by Ivan Ibarra on 2/14/19.
//  Copyright © 2019 Ivan Ibarra. All rights reserved.
//

import UIKit

class ConvertidorDeGradosViewController: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var input: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Convertidor de Grados"
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
    }
    @IBAction func Convertir(_ sender: Any) {
        
        if let entrada = input.text {
            var entradad = (Double(entrada)! - 32) * (5 / 9)
            if(entradad >= 10.0){
                imagen.image = UIImage(named: "sol.jpeg")
            }else{
                imagen.image = UIImage(named: "nieve.jpg")
            }
            resultado.text = String(entradad)
        }
        
        
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
