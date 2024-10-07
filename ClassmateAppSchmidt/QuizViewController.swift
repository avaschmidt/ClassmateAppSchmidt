import UIKit

class QuizViewController: UIViewController {
    @IBOutlet weak var nameDisplayOutlet: UILabel!
    @IBOutlet weak var guessOutlet: UITextField!
    @IBOutlet weak var correctOutlet: UILabel!
    
    var index = 0
    var nicknameOfPerson = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var selectedPersonName = AppData.objects[index].getName()
        nameDisplayOutlet.text = "Name: \(selectedPersonName)"
        
            
    }
    
    @IBAction func guessAction(_ sender: UIButton) {
        resignFirstResponder()
        
        if index < AppData.objects.count{
            nicknameOfPerson = AppData.objects[index].getNickname()
            if guessOutlet.text != nil{
                var guess = guessOutlet.text!
                if guess == nicknameOfPerson{
                    correctOutlet.text = "Correct!"
                }
                else{
                    correctOutlet.text = "Incorrect!"
                }
            }
            index = index + 1
            
        }
        }
    

}
