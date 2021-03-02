//
//  Article.swift
//  News
//
//  Created by Gregor Kramer on 02.03.2021.
//

import Foundation


struct Article: Decodable {

    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: String?
    var content: String?

}
