//
//  KeyChainService.swift
//  InstaTok
//
//  Created by Carmen Z on 2022/11/17.
//

import Foundation
import KeychainSwift

class KeyChainService{
    var _keyChain = KeychainSwift()
    
    var keyChain: KeychainSwift {
        get {
            return _keyChain
        }
        set {
            _keyChain = newValue
        }
    }
    
}
