import UIKit

class SecondViewController: UIViewController {
    var name: String?

    let bladeeProfile = ["Bladee", "09.04.1994", "Musician, Designer", "7"]
    let eccoProfile = ["Ecco2k", "23.10.1994", "Musician, Model", "1"]
    let whitearmorProfile = ["Whitearmor", "25.05.1993", "Producer, Sound Engineer", "1"]
    
    @IBOutlet weak var profileInfo: UILabel!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var dateOfBirthLabel: UITextField!
    @IBOutlet weak var occupationLabel: UITextField!
    @IBOutlet weak var albumsLabel: UITextField!
    @IBOutlet weak var profilePictureView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if name==bladeeProfile[0]{
            nameLabel.text = "Benjamin Reichwald"
            dateOfBirthLabel.text = bladeeProfile[1]
            occupationLabel.text = bladeeProfile[2]
            albumsLabel.text = bladeeProfile[3]
            profilePictureView.image = UIImage(named: bladeeProfile[0])
            
        }
        else if name==eccoProfile[0]{
            nameLabel.text = "Zak Arogundade"
            dateOfBirthLabel.text = eccoProfile[1]
            occupationLabel.text = eccoProfile[2]
            albumsLabel.text = eccoProfile[3]
            profilePictureView.image = UIImage(named: eccoProfile[0])

        }
        else if name==whitearmorProfile[0]{
            nameLabel.text = "Ludwig Rosenberg"
            dateOfBirthLabel.text = whitearmorProfile[1]
            occupationLabel.text = whitearmorProfile[2]
            albumsLabel.text = whitearmorProfile[3]
            profilePictureView.image = UIImage(named: whitearmorProfile[0])

        }
    }

}

