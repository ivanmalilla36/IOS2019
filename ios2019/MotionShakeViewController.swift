//
//  MotionShakeViewController.swift
//  ios2019
//
//  Created by Admin on 2/25/19.
//  Copyright © 2019 Ivan Ibarra. All rights reserved.
//

import UIKit

class MotionShakeViewController: UIViewController {
    
    var arreglo = ["roberto", "jorge", "toño", "bebe", "patito"]
    
    @IBOutlet weak var insNombre: UITextField!
    @IBOutlet weak var lista: UITextView!
    @IBOutlet weak var ganador: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        // Do any additional setup after loading the view.
        self.title = "Motion Shake"
        loadList()
        
    }
    @IBAction func insertar(_ sender: Any) {
        var nvaPerona = insNombre.text!
        arreglo.append(nvaPerona)
         loadList()
    }
    
    override var canBecomeFirstResponder: Bool{
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            let number = Int.random(in: 0 ..< arreglo.count)
            print("Evento Shake Lanzado")
            print(arreglo[number])
            print(number)
            ganador.text = arreglo[number]
            
        }
    }
    
    func loadList(){
        lista.text = ""
        for persona in arreglo {
            lista.text += "\n \(persona)"
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
