//
//  Sense360.swift
//  Sense360
//
//  Created by Mon Zacharias on 14/10/2024.
//

import Foundation
import BridgeSDK

@objc
public class Sense360: NSObject {
    
    var commData: String
    let bridgeSdk: BridgeSDK = BridgeSDK()
    
    @objc
    required public override init() {
        self.commData = ""
    }
    
    @objc(send:)
    public func send(data: String) {
        self.commData = data
        bridgeSdk.send3(data: data)
        print("=== \(type(of: self)).\(#function):\(#line) - \(data)")
    }
    
    @objc
    public func receive() -> String {
        let _ = bridgeSdk.receive3()
        print("=== \(type(of: self)).\(#function):\(#line) - \(commData)")
        let today = Date.now
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        return "=== \(type(of: self)).\(#function):\(#line) " + self.commData + ":::" + formatter.string(from: today)
    }
}
