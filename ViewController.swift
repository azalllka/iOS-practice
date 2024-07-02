//
//  ViewController.swift
//  hw2
//
//  Created by Азалия Юнусова on 02.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLogin: UITextField!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myPassword: UITextField!
    
    let validCredentials = [
        "123": "123",
    ]
    var userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    
    @objc func loginButtonTapped() {
        guard let enteredPassword = validCredentials[myLogin.text ?? ""] else {
            displayAlert(message: "Неверный логин или пароль")
            return
        }
        
        if myPassword.text != enteredPassword {
            displayAlert(message: "Неверный логин или пароль")
        }
        
        func displayAlert(message: String) {
            let alert = UIAlertController(title: "Ошибка", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
}
