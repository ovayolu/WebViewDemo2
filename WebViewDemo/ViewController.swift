//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Birkan Ovayolu on 10/04/2020.
//  Copyright © 2020 Aris Education Technologies. All rights reserved.
//


import UIKit
import WebKit



class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        let url = URL(string: "http://denizyildiziyayinlari.com/app/home.html")!
        webView.load(URLRequest(url: url))
          
        // 2
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    title = webView.title
    }


}

