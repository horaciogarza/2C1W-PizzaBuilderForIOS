//
//  ViewController.swift
//  Pizza Builder
//
//  Created by Horacio Garza on 28/04/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sizeText: UILabel!
    @IBOutlet weak var sizeValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getValueFromSlider() -> String {
        switch (UInt8(sizeValue.value)){
            
        case 1: return "Chica"
        case 2: return "Mediana"
        case 3: return "Grande"
            
        default: return "Error"
            
        }

    }
    @IBAction func updateSize(sender: AnyObject) {
        
        self.sizeText.text = getValueFromSlider();
    }
    @IBAction func submit(sender: AnyObject) {
        
        🍕.sharedPizza.tamaño = String(getValueFromSlider());
        
    }

}

