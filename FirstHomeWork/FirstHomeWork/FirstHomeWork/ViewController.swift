import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(FirstCellCustomClass.self, forCellReuseIdentifier: "FirstCell")
        tableView.register(SecondCellCustomClass.self, forCellReuseIdentifier: "SecondCell")
        tableView.register(ThirdCellCustomClass.self, forCellReuseIdentifier: "ThirdCell")
        tableView.dataSource = self
        tableView.delegate = self
        
        // Регистрация ячеек
        let firstCellNib = UINib(nibName: "FirstCell", bundle: nil)
        tableView.register(firstCellNib, forCellReuseIdentifier: "FirstCell")

        tableView.register(SecondCellCustomClass.self, forCellReuseIdentifier: "SecondCell")
        tableView.register(ThirdCellCustomClass.self, forCellReuseIdentifier: "ThirdCell")

        // Настройка аватарки
        avatarImageView.layer.cornerRadius = avatarImageView.frame.size.width / 2
        avatarImageView.clipsToBounds = true
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 3 // Три ячейки
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 // Одна ячейка на секцию
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath) as! FirstCellCustomClass
            cell.name.text = "Имя"
            cell.age.text = "Год"
            cell.City.text = "Город"
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath) as! SecondCellCustomClass
            cell.textView.text = "Введите текст здесь"
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ThirdCell", for: indexPath) as! ThirdCellCustomClass
            // Настройка Collection View (добавьте необходимую логику)
            return cell
            
        default:
            return UITableViewCell()
        }
    }
}

