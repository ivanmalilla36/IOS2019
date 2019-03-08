//
//  SpotifyLoginViewController.swift
//  ios2019
//
//  Created by Admin on 3/7/19.
//  Copyright © 2019 Ivan Ibarra. All rights reserved.
//

import UIKit

class SpotifyLoginViewController: VideoSplashViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
        // Do any additional setup after loading the view.
        setVideoBackground()
    }
    
    func setVideoBackground(){
        let url = URL(fileURLWithPath: Bundle.main.path(forResource: "moments", ofType: "mp4")!)
        videoFrame = view.frame
        fillMode = .resizeAspectFill
        alwaysRepeat = true
        sound = true
        startTime = 2.0
        alpha = 0.8
        
        contentURL = url
        view.isUserInteractionEnabled = true
    }
        
}
