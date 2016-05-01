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
        
        var countOfThem = 0;
        if 🍕.sharedPizza.masa != nil {
            masaLabel.text = 🍕.sharedPizza.masa;
            countOfThem += 1
        }
        if 🍕.sharedPizza.queso != nil {
            quesoLabel.text = 🍕.sharedPizza.queso;
            countOfThem += 1
        }
        if 🍕.sharedPizza.tamaño != nil {
            tamañoLabel.text = 🍕.sharedPizza.tamaño;
            countOfThem += 1
        }
        
        if 🍕.sharedPizza.cIngredientes != nil {
            countOfThem += 1
            var textToSet: String = " "
            for value in 🍕.sharedPizza.cIngredientes!{
                textToSet += String(value) + ", "
                
            }
            
            ingredientesLabel.text = textToSet;
        }
        
        if countOfThem == 4 {
            let alertController = UIAlertController(title: "🍕 💁🏻", message:
                "Orden en Camino", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }else{
            let alertController = UIAlertController(title: "🍕🙅🏻", message:
                "Selecciona los campos faltantes antes de ordenar!", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        
    }

}
