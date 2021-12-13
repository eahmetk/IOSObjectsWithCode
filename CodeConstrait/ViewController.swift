//
//  ViewController.swift
//  CodeConstrait
//
//  Created by ahmet on 13.12.2021.
//

import UIKit

class ViewController: UIViewController {
    var myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // EKRANIN SİZE ' INI ALMAK
        let width=view.frame.size.width
        let height=view.frame.size.height
        
        
        myLabel.text="text label"
        myLabel.textAlignment = .center
        
        myLabel.frame=CGRect(x:width*0.5 - width*0.8/2, y:height*0.5, width:width*0.8,height:50)
        
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x:width*0.4,y:height*0.7,width: 200,height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
    }
    
    @objc func myAction(){
        myLabel.text="Tapped"
    }

}

