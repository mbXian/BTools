//
//  UIView.swift
//
//  Created by Ben on 12/12/2015.
//  Copyright © 2015 com.xpg. All rights reserved.
//

import UIKit

extension UIView{
    
    func size() -> CGSize {
        return self.bounds.size
    }
    
    func width() -> CGFloat {
        return self.bounds.size.width
    }
    
    func height() -> CGFloat {
        return self.bounds.size.height
    }
    
    /**
     * x 坐标
     **/
    func coordinate_x() -> CGFloat {
        return self.frame.origin.x
    }
    
    /**
     * y 坐标
     **/
    func coordinate_y() -> CGFloat {
        return self.frame.origin.y
    }
    
    /**
     * 圆角
     */
    func setCornerRadius(){
        layer.mask?.masksToBounds = true
        layer.cornerRadius = 3
    }
    
    /**
     * 圆形
     **/
    func setRoundView(){
        layer.mask?.masksToBounds = true
        layer.cornerRadius = frame.size.height / 2.0
    }
    
    /**
     * 设置边框颜色
     *
     * param color 边框颜色
     **/
    func setBorderColor(_ color: UIColor){
        layer.borderColor = color.cgColor
        layer.borderWidth = 0.5
    }
}

