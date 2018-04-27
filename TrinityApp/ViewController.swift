//
//  ViewController.swift
//  TrinityApp
//
//  Created by user135588 on 2/17/18.
//  Copyright © 2018 tlc4u. All rights reserved.
//

import UIKit
import WebKit
//import FBSDKLoginKit
//import Firebase


class ViewController: UIViewController{


    @IBOutlet weak var checkInButton: UIBarButtonItem!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    //Individual Church Buttons
    @IBOutlet weak var greenTrailsButton: UIButton!
    @IBOutlet weak var galewoodButton: UIButton!
    @IBOutlet weak var sNapervilleButton: UIButton!
    @IBOutlet weak var kimberlyWayButton: UIButton!
    
    
    
    var isSideOpen = false
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        print("VIEW DID LOAD")
        sideMenus()
        customizeNavBar()
        customizeChurchButtons()
        // Do any additional setup after loading the view.
        
        //Facebook Credentials
/*        let loginButton = FBSDKLoginButton()
        view.addSubview(loginButton)
        loginButton.frame = CGRect(x: 16, y: 60 , width: view.frame.width - 32, height: 25)*/
        
    }
    
    /*
    func checkInButtonTrack() {
        print("We are in tracker")
        if isSideOpen{
            print("TRUE")
            isSideOpen = false
            self.view.isUserInteractionEnabled = false
        }
        if isSideOpen == false{
            print("FALSE")
            isSideOpen = true
            self.view.isUserInteractionEnabled = true
        }
    }
    */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sideMenus(){
        if revealViewController() != nil{
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            revealViewController().rearViewRevealWidth = 215
            revealViewController().rightViewRevealWidth = 215
            
            checkInButton.target = revealViewController()
            checkInButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            //If the side menu is visable, disable everything but the side menus
            
            //self.view.isUserInteractionEnabled = false
            
        }
    }

    
    func customizeNavBar(){
        navigationController?.navigationBar.tintColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(red: 58/255, green: 196/255, blue: 175/255, alpha: 1)
        
    }
    
    func customizeChurchButtons(){
        //Styles for church buttons
        //Green Trails
        greenTrailsButton.layer.cornerRadius = 3
        greenTrailsButton.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue: 0/255.0, alpha:1.0).cgColor
        greenTrailsButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        greenTrailsButton.layer.shadowRadius = 1.7
        greenTrailsButton.layer.shadowOpacity = 0.8
        
        //Galewood
        galewoodButton.layer.cornerRadius = 3
        galewoodButton.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue: 0/255.0, alpha:1.0).cgColor
        galewoodButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        galewoodButton.layer.shadowRadius = 1.7
        galewoodButton.layer.shadowOpacity = 0.8
        
        //S. NaperVille
        sNapervilleButton.layer.cornerRadius = 3
        sNapervilleButton.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue: 0/255.0, alpha:1.0).cgColor
        sNapervilleButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        sNapervilleButton.layer.shadowRadius = 1.7
        sNapervilleButton.layer.shadowOpacity = 0.8
        
        //Kimberly Way
        kimberlyWayButton.layer.cornerRadius = 3
        kimberlyWayButton.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue: 0/255.0, alpha:1.0).cgColor
        kimberlyWayButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        kimberlyWayButton.layer.shadowRadius = 1.7
        kimberlyWayButton.layer.shadowOpacity = 0.8
    }
    

}
