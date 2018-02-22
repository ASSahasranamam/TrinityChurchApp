//
//  ViewController.swift
//  TrinityApp
//
//  Created by user135588 on 2/17/18.
//  Copyright © 2018 tlc4u. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {


    @IBOutlet weak var checkInButton: UIBarButtonItem!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            sideMenus()
            customizeNavBar()
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sideMenus(){
        if revealViewController() != nil{
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 200
            revealViewController().rightViewRevealWidth = 200
            
            checkInButton.target = revealViewController()
            checkInButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    
    func customizeNavBar(){
        navigationController?.navigationBar.tintColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(red: 58/255, green: 196/255, blue: 175/255, alpha: 1)
        

    }

}
