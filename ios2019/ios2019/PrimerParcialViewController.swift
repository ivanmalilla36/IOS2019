//
//  PrimerParcialViewController.swift
//  ios2019
//
//  Created by Admin on 2/21/19.
//  Copyright © 2019 Ivan Ibarra. All rights reserved.
//

import UIKit

class PrimerParcialViewController: UIViewController {

    @IBOutlet weak var kg: UITextField!
    @IBOutlet weak var textResultado: UITextField!
    @IBOutlet weak var status: UITextField!
    @IBOutlet weak var mts: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    @IBAction func buton(_ sender: Any) {
        
        if let kilos = Double(kg.text!), let metros = Double(mts.text!){
            let kilos = Double(kg.text!)!
            let metros = Double(mts.text!)!
            textResultado.text = calcularMasaCorporal(pesoEnKg: kilos, estaturaEnMetros: metros)
            var opcional = Double(textResultado.text!)!
            if (opcional >= 10.0 && opcional <= 24.9){
                status.text = "El paciente se encuentra en el peso adecuado"
            }else{
                status.text = "El paciente no esta en su peso adecuado"
            }
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
    func calcularMasaCorporal(pesoEnKg: Double, estaturaEnMetros: Double) -> String {
        let imc = pesoEnKg / (estaturaEnMetros * estaturaEnMetros)
        let statusDelPaciente = String(imc)
        return statusDelPaciente
        
        
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    }
    
    
