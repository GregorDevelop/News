//
//  CacheManager.swift
//  News
//
//  Created by Gregor Kramer on 02.03.2021.
//

import Foundation


class CacheManager {
    
    static var imageDictionary = [String: Data] ()
    
    static func saveData(_ urlString: String, _ imageData: Data) {
        
        // Save the image data along with the URL
        imageDictionary[urlString] = imageData
    }
    
    static func retrieveData(_ urlString: String) -> Data? {
        
        // Return the saved image data or nil
        return imageDictionary[urlString]
    }
}
