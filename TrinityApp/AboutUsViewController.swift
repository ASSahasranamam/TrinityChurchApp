//
//  GroupsWebViewController.swift
//  TrinityApp
//
//  Created by kaleb on 2/21/18.
//  Copyright © 2018 tlc4u. All rights reserved.
//

import UIKit
import WebKit

class AboutUsViewController: UIViewController, WKNavigationDelegate{
    
    
    @IBOutlet weak var webView: WKWebView!
    
    //This is not used yet. It is here in case we make more than one
    //webpage allowed - Ryan K.
    //var allowedWebsites = ["https://tlc4u.churchcenter.com/groups"]
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        print("WE ARE IN VIEWDIDLOAD");
        super.viewDidLoad()
        //importing give weblink
        let url = URL(string: "https://tlc4u.churchcenter.com/about")
        webView.load(URLRequest(url: url!))
        webView.allowsBackForwardNavigationGestures = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //This blocks any website that is not tlc4u.
    //It basically examines the url if it contains the tcl4u address. - Ryan K.
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void){
        let url = navigationAction.request.url
        if String(describing: url).range(of: "https://tlc4u.churchcenter.com") != nil{
            decisionHandler(.allow)
        }
        else{
            decisionHandler(.cancel)
            return
        }
    }
    
}

