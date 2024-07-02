import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let validCredentials = [
        ("user", "user"),
        ("user2", "pass2")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Дополнительная настройка, если нужно
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        let enteredLogin = loginTextField.text ?? ""
        let enteredPassword = passwordTextField.text ?? ""

        // Проверка на совпадение с допустимыми парами
        if let index = validCredentials.firstIndex(where: { $0.0 == enteredLogin && $0.1 == enteredPassword }) {
            // Совпадение найдено, переход на экран профиля
            performSegue(withIdentifier: "showProfile", sender: self)
        } else {
            // Ошибка авторизации
            let alert = UIAlertController(title: "Ошибка", message: "Неверный логин или пароль", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    // Подготовка к переходу на экран профиля
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProfile" {
            if let profileVC = segue.destination as? ProfileViewController {
                // Передача данных (например, логина) на экран профиля, если нужно
                profileVC.login = loginTextField.text ?? ""
            }
        }
    }
}

// Класс для экрана профиля (ProfileViewController)
class ProfileViewController: UIViewController {

    @IBOutlet weak var profileLabel: UILabel!
    var login: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        profileLabel.text = "Привет, \(login)!"
    }
}

