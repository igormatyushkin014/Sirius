//
//  NSObjectProtocolExtensionManipulation.swift
//  Sirius
//
//  Created by Igor Matyushkin on 25.03.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import Foundation

public extension NSObjectProtocol {
    
    // MARK: Public static methods
    
    
    // MARK: Private static methods
    
    
    // MARK: Public object methods
    
    @discardableResult
    public func use(block: ((_ object: Self) -> Void)) -> Self {
        block(self)
        return self
    }
    
    @discardableResult
    public func useAs<ObjectType>(castToType: ObjectType.Type, withBlock block: (_ object: ObjectType) -> Void) -> Self {
        let castedObject = self as! ObjectType
        block(castedObject)
        return self
    }
    
    
    // MARK: Private object methods
    
}

