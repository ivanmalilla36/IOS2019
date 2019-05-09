//
//  QrReaderViewController.swift
//  ios2019
//
//  Created by Admin on 5/8/19.
//  Copyright © 2019 Ivan Ibarra. All rights reserved.
//

import UIKit
import QRCodeReader
import AVFoundation

class QrReaderViewController: UIViewController, QRCodeReaderViewControllerDelegate {
    func reader(_ reader: QRCodeReaderViewController, didScanResult result: QRCodeReaderResult) {
        reader.stopScanning()
        dismiss(animated: true, completion: nil)
    }
    
    func readerDidCancel(_ reader: QRCodeReaderViewController) {
        reader.stopScanning()
        dismiss(animated: true, completion: nil)
    }
    
    var readerVC: QRCodeReaderViewController = {
        let builder = QRCodeReaderViewControllerBuilder {
            $0.reader = QRCodeReader(metadataObjectTypes: [.qr], captureDevicePosition: .back)
            
            // Configure the view controller (optional)
            $0.showTorchButton        = true
            $0.showSwitchCameraButton = false
            $0.showCancelButton       = true
            $0.showOverlayView        = true
            $0.rectOfInterest         = CGRect(x: 0.2, y: 0.2, width: 0.6, height: 0.6)
        }
        
        return QRCodeReaderViewController(builder: builder)
    }()
    
	
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func ButtonQr(_ sender: Any) {
        readerVC.delegate = self
        readerVC.completionBlock = {(result: QRCodeReaderResult?) in
            
            if(result != nil){
                let alert = UIAlertController(title: "Alert", message: result!.value , preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }else {
                let alert = UIAlertController(title: "Alert", message:"no jala!" , preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
        
        readerVC.modalPresentationStyle = .formSheet
        present(readerVC, animated: true, completion: nil)
    }
}
