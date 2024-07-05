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
    @IBOutlet weak var butten: UIButton!
    @IBOutlet weak var myPassword: UITextField!
    
    lazy var button: UIButton = {
        let button = UIButton(configuration: .gray())
        button.setTitle("Войти", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let login = "123"
    let password = "123"
    
    let validCredentials = [
        "123": "123",
    ]
    var userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50)])
    }
    
    func displayAlert(message: String) {
        let alert = UIAlertController(title: "Ошибка", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @objc func loginButtonTapped() {
        if login == myLogin.text,
           password == myPassword.text {
            performSegue(withIdentifier: "111", sender: self)
        } else {
            displayAlert(message: "пароль введен неверно")
        }
        
    }
}
