//
//  ViewController.swift
//  Anketa
//
//  Created by maksim on 19/07/2018.
//  Copyright © 2018 maksim. All rights reserved.
//

import UIKit
var  JuredictPerson = false
class ViewController: UIViewController {
    
    @IBOutlet weak var JuredicOrFizickSwitcher: UISwitch!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
        
    @IBAction func StartButton(_ sender: UIButton) {
        performSegue(withIdentifier: "GoToScreen1", sender: self)// screen 2
        JuredictPerson = JuredicOrFizickSwitcher.isOn
        print(JuredictPerson)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

