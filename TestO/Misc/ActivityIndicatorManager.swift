//
//  ActivityManager.swift
//  Test
//
//  Created by Senthilkumar K on 7/5/18.
//  Copyright © 2018 Personal All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
class ActivityManager: NSObject {

    static let Shared = ActivityManager()
    private let activityIndicator = UIActivityIndicatorView()

    //MARK: - Private Methods
    private func setupLoader() {
        remove()
        
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge
        activityIndicator.color = UIColor.red

    }
    
    //MARK: - Public Methods
    func show() {
        setupLoader()
        
        let appDel = UIApplication.shared.delegate as! AppDelegate
        let holdingView = appDel.window!.rootViewController!.view!
        
        DispatchQueue.main.async {
            self.activityIndicator.center = holdingView.center
            self.activityIndicator.startAnimating()
            holdingView.addSubview(self.activityIndicator)
            UIApplication.shared.beginIgnoringInteractionEvents()
        }
    }
    
    func remove(){
        DispatchQueue.main.async {
            self.activityIndicator.stopAnimating()
            self.activityIndicator.removeFromSuperview()
            UIApplication.shared.endIgnoringInteractionEvents()
        }
    }

}

/*
 ************************* ActivityManager Customization ***********************************
 
 Note:
 1. Will update the color
 
 Example
 activityIndicator.color = UIColor.red // Red Color
 
 2. Will update the Size
 
 Example
  activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge // Large Size
 

 ************************* ActivityManager Usage Description ***********************************

 1. Show Activity Indicator
 
    ActivityManager.Shared.show()
 
 2. Remove Activity Indicator

    ActivityManager.Shared.remove()

 */
