//
//  ConfirmationViewController.swift
//  Pizza Builder
//
//  Created by Horacio Garza on 21/08/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import UIKit

class ConfirmationViewController: UIViewController {

    @IBOutlet weak var sizelabel: UILabel!
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var ingredientes: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sizelabel.text = "Tamaño: \(Pizza.sharedPizza.tamaño?.rawValue)"
        cheeseLabel.text = "Tipo de queso: \(Pizza.sharedPizza.queso?.rawValue)"
        massLabel.text = "Tipo de masa: \(Pizza.sharedPizza.masa?.rawValue)"
        
        
        
        let ingredientesSP = Pizza.sharedPizza.getIngredients()
        
        var stringIngredients:String = ""
        
        for name in ingredientesSP {
            stringIngredients += "\(name), "
        }
        
        ingredientes.text = stringIngredients;
        
        
        
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

}
