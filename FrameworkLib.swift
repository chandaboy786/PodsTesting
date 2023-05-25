//
//  FrameworkLib.swift
//  FrameworkLibs
//
//  Created by Muhammad Farhan on 24/05/2023.
//
import Alamofire
import PromiseKit
import FirebaseDatabase
import SkeletonView
import CoreMotion

public final class FrameworkLib {

    let name = "FrameworkLib"
    
    public func add(a: Int, b: Int) -> Int {
        return a + b
    }
    
    public func sub(a: Int, b: Int) -> Int {
        return a - b
    }
    
    func callPhoneNumber(phoneNumber: String)
    {
        let cleanPhoneNumber = phoneNumber.components(separatedBy: CharacterSet.decimalDigits.inverted).joined(separator: "")
        let urlString:String = "tel://\(cleanPhoneNumber)"
        if let phoneCallURL = URL(string: urlString) {
            if (UIApplication.shared.canOpenURL(phoneCallURL)) {
                UIApplication.shared.open(phoneCallURL, options: [:], completionHandler: nil)
            }
        }
    }
}
