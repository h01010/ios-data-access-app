//
//  ViewController.swift
//  AddressBookContacts
//
//  Created by Ignacio Nieto Carvajal on 20/4/16.
//  Copyright © 2016 Ignacio Nieto Carvajal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addressBookFramework(_ sender: UIButton) {
        self.performSegue(withIdentifier: "AddressBookFramework", sender: sender)
    }
    
    @IBAction func contactsFramework(_ sender: UIButton) {
        if #available(iOS 9, *) {
            self.performSegue(withIdentifier: "ContactsFramework", sender: sender)
        } else {
            self.showAlertMessage("Sorry, only available for iOS 9 and up.")
        }
    }
}

