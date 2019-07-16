//
//  ViewController.swift
//  myFirstApp
//
//  Created by Elaine Chen on 7/15/19.
//  Copyright © 2019 Elaine Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var labelOutlet: UILabel!
    var aClass = meClass(name: "Bob")
    var aStruct = meStruct(name: "Joe")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("View loaded")
        labelOutlet.text = "New text"
        var bClass = aClass //replace var with let, no diff, just gets rid of warning
        bClass.name = "Billy"
        print(aClass.name)
        print(bClass.name) //should print out Billy Billy
        //same structure, diff results bc LIFO vs FIFO, class vs struct
        var bStruct = aStruct
        bStruct.name = "Joey"
        print(aStruct.name)
        print(bStruct.name) //should print out Joe Joey
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        print(sender.value)
        let value = sender.value
        labelOutlet.text = String(value)
    }
    @IBAction func switchAction(_ sender: UISwitch) {
        if sender.isOn {
            print("ON")
        } else {
            print("OFF")
        }
    }
    
}

