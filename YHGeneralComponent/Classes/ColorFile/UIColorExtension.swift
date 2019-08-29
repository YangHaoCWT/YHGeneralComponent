//
//  UIColorExtension.swift
//  DaoLeCard
//
//  Created by Mac on 2018/5/30.
//  Copyright © 2018年 YangHao. All rights reserved.
//

import UIKit

extension UIColor {
    
    public convenience init(r: UInt32 ,g: UInt32 , b: UInt32 , a:CGFloat = 1.0) {
        self.init(red: CGFloat(r) / 255.0,
                  green: CGFloat(g) / 255.0,
                  blue: CGFloat(b) / 255.0,
                  alpha: a)
    }

    open class var random: UIColor {
        return UIColor(r: arc4random_uniform(256),
                       g: arc4random_uniform(256),
                       b: arc4random_uniform(256))
    }

    open func image() -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(self.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }

    open class func hexColor(_ hexString: String) -> UIColor {
        var cString: String = hexString.trimmingCharacters(in: .whitespacesAndNewlines)
        if cString.count < 6 { return UIColor.black }

        let index = cString.index(cString.endIndex, offsetBy: -6)
        let subString = cString[index...]
        if cString.hasPrefix("0X") { cString = String(subString) }
        if cString.hasPrefix("#") { cString = String(subString) }

        if cString.count != 6 { return UIColor.black }

        var range: NSRange = NSMakeRange(0, 2)
        let rString = (cString as NSString).substring(with: range)
        range.location = 2
        let gString = (cString as NSString).substring(with: range)
        range.location = 4
        let bString = (cString as NSString).substring(with: range)

        var r: UInt32 = 0x0
        var g: UInt32 = 0x0
        var b: UInt32 = 0x0

        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)

        return UIColor(r: r, g: g, b: b)
    }

    /** 背景颜色 */
    open class var background: UIColor { return UIColor.hexColor("F0F0F0") }
    /** 主题颜色 */
    open class var theme: UIColor { return UIColor.hexColor("3CD75E") }
    /** 字体颜色-主色 */
    open class var titleDark: UIColor { return UIColor.hexColor("333333") }
    /** 字体颜色-灰阶色 */
    open class var titleGray: UIColor { return UIColor.hexColor("8C8C8C") }

}
