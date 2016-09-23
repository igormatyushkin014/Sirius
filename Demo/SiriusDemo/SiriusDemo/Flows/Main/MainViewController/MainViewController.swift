//
//  MainViewController.swift
//  SiriusDemo
//
//  Created by Igor Matyushkin on 07.05.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: Class variables & properties
    
    
    // MARK: Public class methods
    
    
    // MARK: Private class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    
    // MARK: Object variables & properties
    
    
    // MARK: Public object methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Initialize view
        
        view.layer.use { (layer) in
            layer.backgroundColor = UIColor.lightGray.cgColor
            layer.isGeometryFlipped = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Private object methods
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
}
