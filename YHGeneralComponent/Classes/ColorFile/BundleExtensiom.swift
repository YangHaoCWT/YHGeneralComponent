//
//  BundleExtensiom.swift
//  APFramework
//
//  Created by Apple on 2018/1/22.
//  Copyright © 2018年 The_X. All rights reserved.
//

import Foundation

extension Bundle {
    
    /** 命名空间 */
    public var spaceName: String {
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
    /** 版本号 */
    public var appVersion: String {
        return infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    }
    
    public var appBuild: String {
        return object(forInfoDictionaryKey: kCFBundleVersionKey as String) as! String
    }
}
