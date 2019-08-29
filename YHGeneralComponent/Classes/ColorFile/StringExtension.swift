//
//  StringExtension.swift
//  DaoLeCard
//
//  Created by Mac on 2018/6/11.
//  Copyright © 2018年 YangHao. All rights reserved.
//

import Foundation

extension String {


    /// String转Float
    ///
    /// - Parameter str: <#str description#>
    /// - Returns: <#return value description#>
    func stringToCGFloat(str:String)->(CGFloat){

        let string = str
        var cgFloat:CGFloat = 0

        if let doubleValue = Double(string) {
            cgFloat = CGFloat(doubleValue)
        }

        return cgFloat

    }


    /// String转Int
    ///
    /// - Parameter str: <#str description#>
    /// - Returns: <#return value description#>
    func stringToInt(str:String)->(Int){

        let string = str
        var int:Int?

        if let doubleValue = Int(string) {
            int = Int(doubleValue)
        }

        if int == nil {
            return 0
        }

        return int!

    }


    /// Double转Int
    ///
    /// - Parameter double: <#double description#>
    /// - Returns: <#return value description#>
    static func doubleToInt(double:Double?) -> Int {
        guard let douB = double else {
            return 0
        }
        return Int(douB)
    }


    func whetherNil(defaultValue:String?) -> String {
        var backString = String.init()
        if self == "" && defaultValue != "" {
            backString = defaultValue!
            return backString
        } else {
            return self
        }
    }


    /// Double保留几位小数
    ///
    /// - Parameters:
    ///   - decimal: 小数
    ///   - few: 小数点后几位
    /// - Returns: 保留后的小数
    static func keepFewDecimalPlaces(decimal:Double?, few:Int) -> String {

        guard let decimalAre = decimal else {
            return "0.00"
        }

        let string = String.init(format: "%.\(few)f", decimalAre)
        return string
    }

}
