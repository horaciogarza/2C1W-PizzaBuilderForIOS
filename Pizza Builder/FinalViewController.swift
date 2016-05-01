//
//  FinalViewController.swift
//  Pizza Builder
//
//  Created by Horacio Garza on 01/05/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var ingredientesLabel: UILabel!
    @IBOutlet weak var tamañoLabel: UILabel!
    @IBOutlet weak var quesoLabel: UILabel!
    @IBOutlet weak var masaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func updateLabels(sender: AnyObject) {
        
        if 🍕.sharedPizza.masa != nil {
            masaLabel.text = 🍕.sharedPizza.masa;
        }
        if 🍕.sharedPizza.queso != nil {
            quesoLabel.text = 🍕.sharedPizza.queso;
        }
        if 🍕.sharedPizza.tamaño != nil {
            tamañoLabel.text = 🍕.sharedPizza.tamaño;
        }
        
        if 🍕.sharedPizza.cIngredientes != nil {
            var textToSet: String = " "
            for value in 🍕.sharedPizza.cIngredientes!{
                textToSet += String(value) + ", "
                
            }
            ingredientesLabel.text = textToSet;
        }
        
    }

}
