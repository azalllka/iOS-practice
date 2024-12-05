//
//  ViewController4.swift
//  hw2
//
//  Created by Азалия Юнусова on 03.07.2024.
//

import UIKit


class ViewController4: UIViewController {
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookAuthorLabel: UILabel!
    @IBOutlet weak var bookDescriptionLabel: UILabel!
    
    var book: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let book = book else {
            return
        }
        
        bookImageView.image = book.image
        bookTitleLabel.text = book.name
        bookAuthorLabel.text = book.author
        bookDescriptionLabel.text = book.description
    }
}

