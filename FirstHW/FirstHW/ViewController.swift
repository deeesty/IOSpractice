import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    let name = "Иван Иванов"
    let yearOfBirth = 1990
    let city = "Москва"
    let text = "Пример текста."
    let photos = [UIImage(named: "photo1")!, UIImage(named: "photo2")!, UIImage(named: "photo3")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        self.tableView.dataSource = self
        avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
        avatarImageView.clipsToBounds = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
            case 0:
              guard let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath) as? FirstCellCustomClass else {
                return UITableViewCell()
              }
              cell.configure(name: name, year: yearOfBirth, city: city)
              return cell
            case 1:
              guard let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath) as? SecondCellCustomClass else {
                return UITableViewCell()
              }
              cell.textView.text = text
              return cell
            case 2:
              guard let cell = tableView.dequeueReusableCell(withIdentifier: "ThirdCell", for: indexPath) as? ThirdCellCustomClass else {
                return UITableViewCell()
              }
              cell.photos = photos
              cell.collectionView.reloadData()
              return cell
            default:
              return UITableViewCell()
            }
    }
    
}

