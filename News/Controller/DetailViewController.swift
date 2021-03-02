//
//  DetailViewController.swift
//  News
//
//  Created by Gregor Kramer on 02.03.2021.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    
    var articleUrl: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.navigationDelegate = self
    }
    

    override func viewWillAppear(_ animated: Bool) {
        
        // Check that there's a url
        if articleUrl != nil {
            
            // Create the URL object
            let url = URL(string: articleUrl!)
            
            // Couldn't create the URL object
            guard url != nil else {return}
            
            // Create the URLRequest object
            let request = URLRequest(url: url!)
            
            spinner.startAnimating()
            spinner.alpha = 1
            // Load it in the webview
            webView.load(request)
        }
    }
}


extension DetailViewController: WKNavigationDelegate {
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spinner.stopAnimating()
        spinner.alpha = 0
    }
}

