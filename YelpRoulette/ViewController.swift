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
        
        if self.isYelpAppInstalled() {
            println("Yelp App found")
            self.openYelpSearch("sushi")
        } else {
            println("Yelp App not found")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    private func isYelpAppInstalled() -> Bool {
        let scheme = "yelp:"
        let url:NSURL = NSURL(string: scheme)!
        return UIApplication.sharedApplication().canOpenURL(url)
    }

    private func openYelpSearch(keyword:String) {
        let queryString = "yelp:///search?term=" + keyword
        var url:NSURL = NSURL(string:queryString)!
        UIApplication.sharedApplication().openURL(url)
    }
    
    private func openYelpSentinel() {
        UIApplication.sharedApplication().openURL(NSURL(string: "yelp:///biz/the-sentinel-san-francisco")!)
    }
}

