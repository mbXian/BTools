//
//  UILabel.swift
//  BTools
//
//  Created by Ben on 27/4/2017.
//
//

import UIKit

extension UILabel {
    
    /**
     * 设置subString的颜色不一样
     **/
    func setString(string: String, stringColor normalColor: UIColor, specialString subString: String, specialColor subColor: UIColor) {
        self.textColor = normalColor
        let attributedString = NSMutableAttributedString(string: string as String)
        let stringRange = string.range(of: subString) as! NSRange
        let range = NSRange(location: stringRange.location, length: stringRange.length)
        attributedString.addAttribute(NSForegroundColorAttributeName, value: subColor, range: range)
        self.attributedText = attributedString
    }
    
    /**
     * 设置label宽度根据文字长度自动适配
     * @parame text UIlabel的文字
     * @return CGSize UIlabel自适应之后的大小
     */
    func setAutoSize(withText text: String?) -> CGSize {
        if text == nil {
            return CGSize.zero
        }else {
            let font = self.font
            let originSize = CGSize(width: 320.0, height: self.bounds.size.height)
            //    获取当前文本的属性
            let tDict = [NSFontAttributeName: font]
            let actualSize = (text as! NSString).boundingRect(with: originSize, options: .usesLineFragmentOrigin, attributes: tDict, context: nil).size
            return actualSize
        }
    }
}
