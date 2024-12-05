//
//  TableViewCell.swift
//  hw2
//
//  Created by Азалия Юнусова on 03.07.2024.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var detailButton: UIButton!
    @IBOutlet weak var bookTitleLabel: UILabel!
    
    @IBOutlet weak var bookAuthorLabel: UILabel!
    var book: Book?
    var processedInfoTapped: ((Book) -> Void)?
    
    @IBAction func detailButtonTapped(_ sender: Any) {
        if let book = book {
            processedInfoTapped?(book)
        }
    }
    
    func config(user: Book) {
        book = user
        bookImageView.image = user.image
        bookTitleLabel.text = user.name
        bookAuthorLabel.text = user.author
    }
}
