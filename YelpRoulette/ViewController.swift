//
//  ViewController.swift
//  YelpRoulette
//
//  Created by Bryce Aebi on 11/6/14.
//  Copyright (c) 2014 Bryce Corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var searchBar: UITextField!
    
    @IBAction func submitQuery(sender: AnyObject) {
        println("testsubimte")
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        println(textField.text)
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("test")
        searchBar.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

