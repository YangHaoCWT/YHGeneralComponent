//
//  ScreenExtension.swift
//  DaoLeCard
//
//  Created by Mac on 2018/5/31.
//  Copyright © 2018年 YangHao. All rights reserved.
//

import UIKit

extension UIScreen {

    open class func yh_ScreenWidht() -> CGFloat {
        return UIScreen.main.bounds.width
    }

    open class func yh_ScreenHeight() -> CGFloat {
        return UIScreen.main.bounds.height
    }

    open class func yh_ScreenScale() -> CGFloat {
        return UIScreen.main.scale
    }

}
