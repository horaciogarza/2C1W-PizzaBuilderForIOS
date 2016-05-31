//
//  RealBreadTypeViewController.swift
//  Pizza Builder
//
//  Created by Horacio Garza on 30/05/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import UIKit

class RealBreadTypeViewController: UIViewController {

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

    @IBAction func setDelgada(sender: AnyObject) {
        Pizza.sharedPizza.masa = .delgada
    }
    
    @IBAction func setCrujiente(sender: AnyObject) {
        Pizza.sharedPizza.masa = .crujiente
    }
    @IBAction func setGruesa(sender: AnyObject) {
        Pizza.sharedPizza.masa = .gruesa
    }
}
