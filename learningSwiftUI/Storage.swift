//
//  Storage.swift
//
import SwiftUI
import Foundation

var APPGROUP : String = "group.org.yourappgroup" // edit this accordingly

class storage {
    fileprivate let fileName = "data.out"
    enum StorageError: Error {
        case noSuchFile
    }
    
    
    init() {
        
    }
    
    
    func persist(withNumbers : [String], withFilename: String = "" ) {
        
        let filename : String = (withFilename.count == 0 ? fileName : withFilename)
        let directory : URL = FileManager.sharedContainerURL()
        let fullPath = directory.appendingPathComponent(filename)
        do {
            try NSKeyedArchiver.archivedData(withRootObject: withNumbers, requiringSecureCoding: false).write(to: fullPath)
        } catch {
      
        }
    }

    
    func loadFromFile(withFilename : String = "") throws ->[String] {
        
        let filename : String = (withFilename.count == 0 ? fileName : withFilename)
        let directory : URL = FileManager.sharedContainerURL()
        let fileURL = directory.appendingPathComponent(filename)
        
        guard let data = try Data(contentsOf: fileURL) as Data?
        else {
            throw StorageError.noSuchFile
        }
        let result = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data as Data) as! [String]
        
        return result
    }
        
}


// from https://dmtopolog.com/ios-app-extensions-data-sharing/
extension FileManager {
  static func sharedContainerURL() -> URL {
    return FileManager.default.containerURL(
      forSecurityApplicationGroupIdentifier: APPGROUP
    )!
  }
}
