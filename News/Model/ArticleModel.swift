//
//  ArticleModel.swift
//  News
//
//  Created by Gregor Kramer on 02.03.2021.
//

import Foundation

protocol ArticleModelProtocol {
    func articlesRetrieved(_ articles: [Article])
}


class ArticleModel {
    
    var delegate: ArticleModelProtocol?
    
    func getArticles() {
        
        // Fire off the request to the API

        // Create a string URL
        let urlString = "https://newsapi.org/v2/everything?q=apple&from=2021-03-01&to=2021-03-01&sortBy=popularity&apiKey=4ef4e2fd9c354e3583426c84b5505455"
        
        // Create a URL object
        let url = URL(string: urlString)
        // Check that it isn't nil
        guard url != nil else {return}
        
        // Get the URL Session
        let session = URLSession.shared
        
        // Create the data task
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            // Check that there are no errors and that there is data
            if error == nil && data != nil {
                
                // Attempt to parse the JSON
                let decoder = JSONDecoder()
                do {
                    // Parse the json into ArticleService
                    let articleService = try decoder.decode(ArticleService.self, from: data!)
                    // Get the articles
                    let article = articleService.articles!
                    // Pass it back to the view controller in the main thread
                    self.delegate?.articlesRetrieved(article)
                } catch {
                    print(error)
                } // End Do - Catch
            } // End if
        } // End Data Task
        
        // Start the data task
        dataTask.resume()
        
    } // End getArticles
    
}
