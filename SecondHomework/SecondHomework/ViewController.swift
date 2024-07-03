import UIKit

let usersDataBase = [(username: "Bladee", password: "Bladee"), (username: "Ecco2k", password: "Ecco2k"), (username: "Whitearmor", password: "Whitearmor")]

class ViewController: UIViewController {
    
    func accessibilityCheck(){
        let warning = UIAlertController(title: "There is no such member on this label", message: "Try another", preferredStyle: .alert)
        warning.addAction(UIAlertAction(title: "OK", style: .cancel))
        self.present(warning, animated: true)
    }
    
    func access(username: String?, password: String?) -> String? {
        for usr in usersDataBase{
            if usr.username==username && usr.password==password{
                return usr.username
            }
        }
        return nil
    }
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func logging(_ sender: UIButton){
        let accessed = access(username: usernameTextField.text, password: passwordTextField.text)
        if accessed == nil{
            accessibilityCheck()
        }
        else{
            performSegue(withIdentifier: "profileView", sender: self)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "profileView" {
            guard let dest = segue.destination as? SecondViewController else { return }
            dest.name = usernameTextField.text
        }
    }


}

