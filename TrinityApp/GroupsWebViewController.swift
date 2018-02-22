//
//  GroupsWebViewController.swift
//  TrinityApp
//
//  Created by kaleb on 2/21/18.
//  Copyright © 2018 tlc4u. All rights reserved.
//

import UIKit
import WebKit

class GroupsWebViewController: UIViewController, WKUIDelegate {


    @IBOutlet weak var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //importing give weblink
        let myURL = URL(string: "https://tlc4u.churchcenter.com/groups")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
