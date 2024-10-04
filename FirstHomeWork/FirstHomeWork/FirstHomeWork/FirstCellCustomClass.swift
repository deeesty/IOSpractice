import UIKit

class FirstCellCustomClass: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var City: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
