//
//  AdressViewController.swift
//  Pizza Builder
//
//  Created by Horacio Garza on 05/06/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import UIKit
// MARK: - Hitest

// Put this piece of code anywhere you like
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}



class AdressViewController: UIViewController {
    
    @IBOutlet var adressDataCollect: [UITextField]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //for item in Pizza.sharedPizza.direccion {
        
        
        
        // }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func setAdressData(sender: AnyObject) {
        
        var alertMessage:String?
        if (isFormFull()) {
            
            alertMessage = "Completo!, Ir a confirmación"
            
            let dictionaryAdress:NSMutableDictionary = NSMutableDictionary()
            Pizza.sharedPizza.direccion?.calle = adressDataCollect[0].text!
            Pizza.sharedPizza.direccion?.numeroExterior = Int(adressDataCollect[1].text!)
            Pizza.sharedPizza.direccion?.colonia = adressDataCollect[2].text!
            Pizza.sharedPizza.direccion?.numeroTelefonico = adressDataCollect[3].text!
            
            print("Data to set:\n")
            
            for (key, value) in dictionaryAdress{
                
                print("\t\(key): \(value)")
            }
            
        }
            
        else{
            alertMessage = "Error, Vuelve a checar tus datos!"
        }
        
        // create the alert
        let alert = UIAlertController(title: "Message", message: alertMessage!, preferredStyle: UIAlertControllerStyle.Alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    
    /**
     Check if the current variables are complete
     
     - returns: Returns true if its ok or return false if there's one or more variables empty
     */
    func isFormFull() -> Bool{
        for item in adressDataCollect {
            if (item.text!.isEmpty) {
                return false
            }
        }
        return true;
    }
    
}


