//
//  UIFontExtension.swift
//  DaoLeCard
//
//  Created by Mac on 2018/5/31.
//  Copyright © 2018年 YangHao. All rights reserved.
//

import UIKit

let HeitiSC = "Heiti SC" // 主题字体  ->  默认标记为苹果默认字体
let PingFangSCMedium = "PingFangSC-Medium"  // 中号
let PingFangSCRegular = "PingFang-SC-Regular" // 常规体
let DINCondensedBold = "DINCondensed-Bold" //  英文字体
let HelveticaBold = "Helvetica-Bold"      // 英文粗体
let PingFangTCLight = "PingFangTC-Light" // 极细
let Helvetica = "Helvetica" // 极细
let PingFangSCSemibold = "PingFangSC-Semibold" // 巨粗


/// 375基础视图为iphone6   ->   可替换为任意手机的基础视图
let CurrentScreenWidht = 375

extension UIFont {

    open class func custFont(fontSize:CGFloat, fontStyle:String?) -> UIFont {

        let custSize = fontSize * (UIScreen.yh_ScreenWidht() / CGFloat(CurrentScreenWidht))

        guard let style = fontStyle else {
            let font = UIFont(name: HeitiSC, size: custSize)
            return font!
        }

        var font:UIFont?

        if style == "" {
            font = UIFont(name: PingFangSCRegular, size: custSize)
        } else {
            font = UIFont(name: style, size: custSize)
        }

        return font!

    }

}
