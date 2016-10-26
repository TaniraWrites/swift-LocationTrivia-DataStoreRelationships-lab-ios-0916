//
//  AddTriviaViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Tanira Wiggins on 10/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddTriviaViewController: UIViewController {
    
    var store = LocationDataStore.sharedInstance
    
    var location = Location()
    
    
    @IBOutlet weak var submitTriviaButton: UIButton!
    
    @IBOutlet weak var cancelTriviaButton: UIButton!
    
    
    
    override func viewDidLoad() {
        self.inputTrivia.accessibilityIdentifier = "Trivium Text Field"
        self.inputTrivia.accessibilityLabel = "Trivium Text Field"
        self.submitTriviaButton.accessibilityIdentifier = "Save Button"
        self.submitTriviaButton.accessibilityLabel = "Save Button"
        self.cancelTriviaButton.accessibilityIdentifier = "Cancel Button"
        self.cancelTriviaButton.accessibilityLabel = "Cancel Button"
    }
    
    
    
    @IBOutlet weak var inputTrivia: UITextField!
    
    
    
    @IBAction func cancelTrivia(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func submitTrivia(_ sender: AnyObject) {
        if inputTrivia.text != "" {
            var trivia = Trivium(content: inputTrivia.text!, likes: 0)
            location.trivia.append(trivia)
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
}
