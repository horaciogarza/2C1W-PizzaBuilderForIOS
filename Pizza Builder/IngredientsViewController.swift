//
//  IngredientsViewController.swift
//  Pizza Builder
//
//  Created by Horacio Garza on 30/05/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import UIKit

class IngredientsViewController: UIViewController {

    @IBOutlet var collectionOfSwitches: Array<UISwitch>?
    
    @IBAction func setJamon(sender: UISwitch) {
        Pizza.sharedPizza.ingredientesDisponibles.setValue(!(Pizza.sharedPizza.ingredientesDisponibles.valueForKey("jamon") as! Bool), forKey: "jamon")
        print(Pizza.sharedPizza.ingredientesDisponibles.valueForKey("jamon") as! Bool)
    }
    
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

}
