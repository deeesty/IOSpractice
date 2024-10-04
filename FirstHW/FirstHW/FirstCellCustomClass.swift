import UIKit

class FirstCellCustomClass: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(name: String, year: Int, city: String) {
      nameLabel.text = "Геральт"
      yearLabel.text = "(1100)"
      cityLabel.text = "Вызима"
    }
    
}
