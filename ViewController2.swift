//
//  ViewController2.swift
//  hw2
//
//  Created by Азалия Юнусова on 03.07.2024.
//

import UIKit

class ViewController2: UIViewController {

    var userDefaults = UserDefaults.standard
    
    @IBOutlet weak var myUserImage: UIImageView!
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func myExitButtonPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
