//
//  LogTool.swift
//  MyNote
//
//  Created by Ben on 25/4/2017.
//
//

import UIKit

class LogTool: NSObject {
    
    private let Log_String = "Log"
    
    static func creatAndInitFile() {
        let fileManager = FileManager()
        if !fileManager.fileExists(atPath: LogTool.getLogFilePath()) {
            let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
            let initString = DateFormatterTool.shareInstance.getYMDFormatter().getCurrenrDateString() + ": creatAndInitLogFile version = " + version + "\n"
            try! initString.write(toFile: LogTool.getLogFilePath(), atomically: true, encoding: String.Encoding.utf8)
        }
    }
    
    static func getLogFilePath() -> String {
        return NSHomeDirectory() + "/Documents/Log.text"
    }
    
    static func clearLog () {
        let fileManager = FileManager()
        try! fileManager.removeItem(atPath: LogTool.getLogFilePath())
    }
    
    static func log(logString: String) {
        let currentDateString = DateFormatterTool.shareInstance.getYMDFormatter().getCurrenrDateString()
        let log = currentDateString + "：" + logString + "\n"
        
        let fileHandle = FileHandle(forUpdatingAtPath: LogTool.getLogFilePath())
        fileHandle?.seekToEndOfFile()
        let logData = log.data(using: String.Encoding.utf8)
        fileHandle?.write(logData!)
        fileHandle?.closeFile()
    }
}
