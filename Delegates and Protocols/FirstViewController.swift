//
//  ViewController.swift
//  Delegates and Protocols
//
//  Created by Konstantinidis, Evangelos on 27.03.18.
//  Copyright © 2018 Konstantinidis, Evangelos. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanReceive {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "sendDataForwards", sender: self)
        
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textField.text!
            
            secondVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        label.text = data
    }
    @IBAction func setBackgroundColor(_ sender: Any) {
        
        view.backgroundColor = UIColor.blue
    }
}

