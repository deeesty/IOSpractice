import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var trainingName: UILabel!
    @IBOutlet weak var trainingImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
