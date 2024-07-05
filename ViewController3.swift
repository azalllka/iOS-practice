//
//  ViewController3.swift
//  hw2
//
//  Created by Азалия Юнусова on 03.07.2024.
//

import UIKit

class Book {
    var name: String
    var author: String
    var image: UIImage?
    let description: String
    var Favorite: Bool
    
    init(name: String, author: String, image: UIImage? = nil, description: String, Favorite: Bool) {
        self.name = name
        self.author = author
        self.image = image
        self.description = description
        self.Favorite = Favorite
    }
}

class ViewController3: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var dataSource: [Book] = [Book(name: "Тонкое искусство пофигизма", author: "Марк Мэнсон", image: UIImage(named:"book1"), description: "Современное общество пропагандирует культ успеха: будь умнее, богаче, продуктивнее — будь лучше всех. Соцсети изобилуют историями на тему, как какой-то малец придумал приложение и заработал кучу денег, статьями в духе «Тысяча и один способ быть счастливым», а фото во френдленте создают впечатление, что окружающие живут лучше и интереснее, чем мы. Однако наша зацикленность на позитиве и успехе лишь напоминает о том, чего мы не достигли, о мечтах, которые не сбылись. Как же стать по-настоящему счастливым? Популярный блогер Марк Мэнсон в книге «Тонкое искусство пофигизма» предлагает свой, оригинальный подход к этому вопросу.", Favorite: false), Book(name: "Гарри Поттер", author: "Дж.К. Роулинг", image: UIImage(named:"book2"), description: "Гарри Поттер возвращается во второй раз в Хогвартс, но его ждут новые трудности. Загадочный эльф-домовик Добби предупреждает Гарри, что в Хогвартсе его ждет опасность. По школе начинают ползти слухи о Тайной комнате, открытой 50 лет назад, из которой выпущено что-то ужасное.", Favorite: true), Book(name: "Тайна пациента", author: "Лорет Энн Уайт", image: UIImage(named:"book3"), description: "B дохновением для этой вымышленной истории послужило реальное преступление, ужасное и шокирующее, совершенное в тихом районе Канадских прерий. События того дня вошли в криминальную историю Канады и подробно освещались в СМИ, как и последующие судебные разбирательства. И хотя предыстория романа базируется на некоторых истинных деталях этого преступления, все остальное - вымышлено.", Favorite: false), Book(name: "НИ СЫ", author: "Dzhen Sinsero", image: UIImage(named:"book4"), description: " книге НИ СЫ вы отправитесь в увлекательное путешествие, которое изменит ваше отношение к жизни. Автор Джен Синсеро приглашает вас исследовать собственные верования, ограничения и привычки, которые мешают вам достичь желаемого успеха. НИ СЫ — это не просто книга о саморазвитии или достижении целей. Это история о том, как вырасти из среднего и сделать нечто удивительное. Джен Синсеро делится с вами своими собственными личными историями, испытаниями и победами, чтобы помочь вам понять, что вы можете добиться гораздо большего, чем когда-либо могли себе представить.", Favorite: true), Book(name: "Внутри убийцы", author: "Майк Омер", image: UIImage(named:"book5"), description: "Зои (девушка-судебный психолог) долгое время занималась составлением портрета убийц, поэтому периодически консультировала агентов ФБР. Однажды Зои Бентли вызывает для помощи агент Тейтум Грей, пытающийся отделаться от показушного профайлера, который умеет только кичиться своими теоретическими работами, а с практикой сталкивался едва ли. Зои осаждает того мужчину и становится партнером агента Грея. Постепенно мы узнаем, что девушка раскрыла своего первого маньяка, когда еще ходила в школу, однако ей никто не поверил. И вот, спустя столько лет, она замечает похожий почерк. Права ли она или её детские воспоминания сбивают с правильного пути?", Favorite: true)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                tableView.dataSource = self
                tableView.delegate = self
    }
    
    var book: Book?
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "1223" {
            if let book = sender as? Book,
               let desctViewController = segue.destination as? ViewController4 {
                desctViewController.book = book
            }
        }
    }
}


extension ViewController3: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let book = dataSource[indexPath.row]
        performSegue(withIdentifier: "1223", sender: book)
    }
    
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        
        let book = dataSource[indexPath.row]
        cell.config(user: book)
        cell.processedInfoTapped = { [weak self] book in
            self?.book = book
            self?.performSegue(withIdentifier: "1223", sender: self)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
}
