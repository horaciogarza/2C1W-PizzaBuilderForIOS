//
//  IngredientsViewController.swift
//  Pizza Builder
//
//  Created by Horacio Garza on 30/05/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import UIKit

class IngredientsViewController: UIViewController {
    
    let ingredient: Array<String> = ["jamon", "peperonni", "pavo", "salchicha", "aceituna", "cebolla", "pimiento", "piña", "anchoa"];
    @IBOutlet var collectionOfSwitches: Array<UISwitch>?
    
    
    @IBAction func switchDidChange(sender: AnyObject) {
        
        let selectedSwitch = sender as! UISwitch;
        let ingredienteString:String = getIngredient(selectedSwitch.tag - 1)
        print("Ingrediente Seleccionado: \(ingredienteString), Index: \(selectedSwitch.tag - 1)")
        
        print("Current value: \(Pizza.sharedPizza.ingredientesDisponibles[ingredienteString] as! Bool) Changed to: \(!(Pizza.sharedPizza.ingredientesDisponibles[ingredienteString] as! Bool))")
        
        
        Pizza.sharedPizza.ingredientesDisponibles.setValue(!(Pizza.sharedPizza.ingredientesDisponibles[ingredienteString] as! Bool), forKey: ingredienteString)
        
    }
    
    
    //Get ingredient
    func getIngredient(index: Int) -> String{
        return ingredient[index]
    }
    
    //Get Index
    func getIndex(key: String) -> Int{
        return ingredient.indexOf(key)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //TODO: Checar los que ya fueron seleccionados
        for (key, value) in Pizza.sharedPizza.ingredientesDisponibles {
            if (value as! Bool) {
                let index = getIndex(key as! String)
                
                collectionOfSwitches![index].setOn(!collectionOfSwitches![index].on, animated: false)
            }
        }
        
        
        
        
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
