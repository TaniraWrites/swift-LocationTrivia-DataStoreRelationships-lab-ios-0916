//
//  AddLocationsViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Tanira Wiggins on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddLocationsViewController: UIViewController {
    @IBOutlet weak var textOne: UITextField!
    @IBOutlet weak var textTwo: UITextField!
    @IBOutlet weak var textThree: UITextField!
    
    var store = LocationDataStore.sharedInstance
    
    override func viewDidLoad() {
       self.textOne.accessibilityLabel = "nameField"
        self.textOne.accessibilityIdentifier = "nameField"
        self.textTwo.accessibilityLabel = "latitudeField"
        self.textTwo.accessibilityIdentifier = "latitudeField"
        self.textThree.accessibilityLabel = "longitudeField"
        self.textThree.accessibilityIdentifier = "longitudeField"
    }
    
    
    @IBAction func submitButton(_ sender: AnyObject) {
        if textOne.text != "" && textTwo.text != "" && textThree.text != "" {
            guard let textTwoFloat: Float = Float(textTwo.text!) else { return }
            guard let textThreeFloat: Float = Float(textThree.text!) else { return}
        store.locationArray.append(Location(name: textOne.text!, latitude: textTwoFloat, longitude: textThreeFloat))
          self.dismiss(animated: true, completion: nil)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    
    @IBAction func cancelButton(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    }

