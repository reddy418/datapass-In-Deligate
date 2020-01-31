//
//  ViewController.swift
//  datapass In Deligate
//
// Created by GANGARAPU CHINNA HARSHAVARDHAN REDDY on 11/11/19.
//  Copyright © 2019 GANGARAPU CHINNA HARSHAVARDHAN REDDY. All rights reserved.

import UIKit

class ViewController: UIViewController,datapass {
    var name1 = String()
    var name2 = String()
    var ypos = 100
    func sendData(firstName: String, lastName: String) {
            name1 = firstName
     ypos = ypos+50
        label1 = UILabel()
        label1.frame = CGRect(x: 40, y: ypos, width: 150, height: 30)
        label1.backgroundColor = .red
        view.addSubview(label1)
        label1.text = name1
      //print(label1.text)
        
    
        name2 = lastName
        
        label2 = UILabel()
        label2.frame = CGRect(x: 200, y: ypos, width: 150, height: 30)
        label2.backgroundColor = .cyan
        view.addSubview(label2)
        label2.text = name2
        //print(label2.text)
    }
    
   
    var label1:UILabel!
    var label2:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    @IBAction func addBtn(_ sender: Any) {
        
        let second = self.storyboard?.instantiateViewController(withIdentifier: "nag") as!
        SecondViewController
       second.delegate = self
        
        present(second, animated: true) {
            
        }
        
        
    }
    
   
    
    
}

