//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Juan Manuel on 08/01/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var total: String?
    var settings: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        totalLabel.text = total
        settingsLabel.text = settings
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
