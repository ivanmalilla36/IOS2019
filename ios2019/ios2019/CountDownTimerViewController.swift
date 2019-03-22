//
//  CountDownTimerViewController.swift
//  ios2019
//
//  Created by Admin on 3/13/19.
//  Copyright © 2019 Ivan Ibarra. All rights reserved.
//

import UIKit
import SwiftySound

class CountDownTimerViewController: UIViewController {

    @IBOutlet weak var lblindicator: UILabel!
    @IBOutlet weak var timaLabel: UILabel!
    @IBOutlet weak var btnStartStop: UIButton!
    
    var seconds = 24
    var timer: Timer!
    private var mySound: Sound?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        // Do any additional setup after loading the view.
        
        lblindicator.layer.masksToBounds = true
        lblindicator.layer.cornerRadius = 40
        Sound.enabled = true
    }
    
    @IBAction func startButon(_ sender: Any) {
        if timer == nil {
            startTimer()
            
        }else{
            if btnStartStop.titleLabel?.text == "Stop" {
                timer.invalidate()
                btnStartStop.setTitle("Start", for: UIControl.State.normal)
                lblindicator.isHidden = false
            }else{
                timer.invalidate()
                startTimer()
                
                
            }
            
        }
       
        
    }
    
    
    @IBAction func restartButon(_ sender: Any) {
        seconds = 24
        timer.invalidate()
        lblindicator.isHidden = false
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime(){
        
        if lblindicator.isHidden == true{
            btnStartStop.setTitle("Stop", for: UIControl.State.normal)
        }else{
            btnStartStop.setTitle("Start", for: UIControl.State.normal)
        }
        timaLabel.text = "\(seconds)"
        if (seconds != 0){
            lblindicator.isHidden = true
            seconds -= 1
        }else {
            endTimer()
        }
    }
    
    func endTimer(){
        timer.invalidate()
         lblindicator.isHidden = false
        if let URL = Bundle.main.url(forResource: "endgame", withExtension: "wav") {
            mySound = Sound(url: URL)
        }
        
        mySound?.play{ completed in
            print("completado \(completed)")
            self.navigationController?.popToRootViewController(animated: true)
        }
    }
    
    
    
}
