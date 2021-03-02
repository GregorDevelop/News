//
//  ViewController.swift
//  News
//
//  Created by Gregor Kramer on 02.03.2021.
//

import UIKit

class ViewController: UIViewController {

    var model = ArticleModel()
    var articles = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.delegate = self
        model.getArticles()
    }
    
}


extension ViewController: ArticleModelProtocol{
    func articlesRetrieved(_ articles: [Article]) {
        
    }
    
    
}
