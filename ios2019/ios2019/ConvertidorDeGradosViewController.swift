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
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        
        self.title = "Convertidor de Grados"
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
    }
    @IBAction func Convertir(_ sender: Any) {
    
        if let entrada = (Double(input.text!)) {
             let res = Double(input.text!)!
             resultado.text  =  convertir(celcius: res)
        }else{
            let alert = UIAlertController(title: "Alert", message: "invalido!!!!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                    
                    
                }}))
            self.present(alert, animated: true, completion: nil)
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
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func convertir(celcius:Double) -> String {
        
        var entradad = (celcius - 32) * (5 / 9)
            if(entradad >= 10.0){
                imagen.image = UIImage(named: "sol.jpeg")
            }else{
                imagen.image = UIImage(named: "nieve.jpg")
            }
            //resultado.text = String(entradad)
            return String(entradad)
        }
    
}
