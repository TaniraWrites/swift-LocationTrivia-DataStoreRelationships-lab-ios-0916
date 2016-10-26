//
//  TriviaTableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Tanira Wiggins on 10/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TriviaTableViewController: UITableViewController {
    var store = LocationDataStore.sharedInstance

    var location = Location()
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.accessibilityLabel = "Trivia Table"
        self.tableView.accessibilityIdentifier = "Trivia Table"
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return location.trivia.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "triviaCell", for: indexPath)
        cell.textLabel?.text = location.trivia[indexPath.row].content
        cell.detailTextLabel?.text = (String(location.trivia[indexPath.row].likes))
        return cell
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "triviaSegue"{
//            if let dest = segue.destination as? AddTriviaViewController,
//                let indexPath = tableView.indexPathForSelectedRow {
//                dest.location = store.locationArray[indexPath.row]
//            }
//        }
//    }
    
    
}
