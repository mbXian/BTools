//
//  DateFormatterTool.swift
//  GuoBangCleaner
//
//  Created by Ben on 9/5/16.
//  Copyright © 2016 com.xpg. All rights reserved.
//

import Foundation

class DateFormatterTool: DateFormatter{
    
    static let shareInstance = DateFormatterTool()
    
    fileprivate override init(){
        super.init()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /**
     * 日期格式：yyyy-MM-dd HH:mm:ss Formatter
     **/
    func getYMDHMSFormatter() -> DateFormatterTool {
        self.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return self
    }
    
    /**
     * 日期格式：yyyy-MM-dd HH:mm Formatter
     **/
    func getYMDHMFormatter() -> DateFormatterTool {
        self.dateFormat = "yyyy-MM-dd HH:mm"
        return self
    }
    
    /**
     * 日期格式：yyyy-MM-dd Formatter
     **/
    func getYMDFormatter() -> DateFormatterTool {
        self.dateFormat = "yyyy-MM-dd"
        return self
    }
    
    /**
     * 返回当前的时间 String
     **/
    func getCurrenrDateString() -> String {
        return self.string(from: Date())
    }
    
    /**
     * 转变时间到String
     * parame data 需要转化的时间
     **/
    func convertToString(from date: Date?) -> String? {
        if date == nil {
            return nil
        }else {
            return self.string(from: date!)
        }
    }
    
    /**
     * 转变String到Date
     * parame string? 需要转化的string
     **/
    func convertToDate(from string: String?) -> Date? {
        if string == nil {
            return nil
        }else {
            return self.date(from: string!)
        }
    }
}
