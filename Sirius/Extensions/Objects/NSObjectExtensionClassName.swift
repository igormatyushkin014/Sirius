//
//  NSObjectExtensionClassName.swift
//  Sirius
//
//  Created by Igor Matyushkin on 07.05.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import Foundation

public extension NSObject {
    
    // MARK: Public static methods
    
    public static func className(withNamespace includeNamespace: Bool) -> String {
        let classNameWithNamespace = NSStringFromClass(self)
        
        if includeNamespace {
            return classNameWithNamespace
        } else {
            let segments = classNameWithNamespace.components(separatedBy: ".")
            let classNameWithoutNamespace = segments.last ?? ""
            return classNameWithoutNamespace
        }
    }
    
    
    // MARK: Private static methods
    
    
    // MARK: Public object methods
    
    
    // MARK: Private object methods
    
}

