//
//  BreadTypeViewController.swift
//  Pizza Builder
//
//  Created by Horacio Garza on 30/05/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import UIKit

class BreadTypeViewController: UIViewController {

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
    @IBAction func setCheddar(sender: AnyObject) {
        Pizza.sharedPizza.queso = .cheddar
    }
    @IBAction func setMozarella(sender: AnyObject) {
        Pizza.sharedPizza.queso = .mozarella
    }
    @IBAction func setParmesano(sender: AnyObject) {
        Pizza.sharedPizza.queso = .parmesano
    }
    @IBAction func setSinQueso(sender: AnyObject) {
        Pizza.sharedPizza.queso = .sinQueso
    }
}
