//
//  ArticleService.swift
//  News
//
//  Created by Gregor Kramer on 02.03.2021.
//

import Foundation


struct ArticleService: Decodable {
    
    var totalResults: Int?
    var articles: [Article]?
}
