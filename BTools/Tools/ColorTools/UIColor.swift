//
//  UIColor.swift
//  GuoBangCleaner
//
//  Created by Ben on 12/14/2015.
//  Copyright © 2015 com.xpg. All rights reserved.
//

import UIKit

extension UIColor{
    /**
     * 主题色
     */
    static func appThemeColor()->UIColor{
        return UIColor(red:0.13, green:0.54, blue:0.79, alpha:1.00)
    }
    
    /**
     * 浅灰色
     */
    static func iceLightGrayColor()->UIColor{
        return UIColor(red:0.45, green:0.45, blue:0.45, alpha:1.00)
    }
    
    /**
     * 深灰色
     */
    static func iceDarkGrayColor()->UIColor{
        return UIColor(red:0.29, green:0.29, blue:0.29, alpha:1.00)
    }
    
    /**
     * 充电绿
     */
    static func chargingGreen()->UIColor{
        return UIColor.init(red: 0.18, green: 0.78, blue: 0.54, alpha: 1)
    }
    
    /**
     * 水蓝色
     */
    static func waterBlueColor()->UIColor{
        return UIColor.init(red: 0.20, green: 0.85, blue: 0.86, alpha: 1)
    }
    
    /**
     * 天蓝色
     */
    static func skyBlueColor()->UIColor{
        return UIColor.init(red: 0.17, green: 0.76, blue: 0.97, alpha: 1)
    }
    
    /**
     * 深蓝色
     */
    static func darkBlueColor()->UIColor{
        return UIColor.init(red: 0.05, green: 0.34, blue: 0.67, alpha: 1)
    }
    
    /**
     * 淡橙色
     */
    static func lightOrangeColor()->UIColor{
        return UIColor.init(red: 0.99, green: 0.64, blue: 0.22, alpha: 1)
    }
    
    /**
     * 淡淡灰色
     */
    static func lightLightGrayColor()->UIColor{
        return UIColor.init(red: 0.97, green: 0.97, blue: 0.97, alpha: 1)
    }
    
    /**
     * 半透明灰色
     */
    static func halfTransparentGrayColor()->UIColor{
        return UIColor.init(red: 0.02, green: 0.08, blue: 0.04, alpha: 0.5)
    }
    
    /**
     * 半透明
     */
    static func half_transparentColor()->UIColor{
        return UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 0.5)
    }
}
