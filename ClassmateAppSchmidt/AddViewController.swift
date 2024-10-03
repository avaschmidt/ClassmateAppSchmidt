import UIKit
class AddViewController: UIViewController {
    @IBOutlet weak var nameOutlet: UITextField!
    @IBOutlet weak var nicknameOutlet: UITextField!
    @IBOutlet weak var gradeOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    
    
    @IBAction func enterAction(_ sender: UIButton) {
        resignFirstResponder()
        if nameOutlet.text != nil && nicknameOutlet.text != nil && gradeOutlet.text != nil{
            AppData.newStuName = nameOutlet.text!
            AppData.newStuNickname = nicknameOutlet.text!
            AppData.newStuGrade = Int(gradeOutlet.text!)!
            AppData.added = true
        }
        else{
            print("Error")
        }
        nameOutlet.text = ""
        nicknameOutlet.text = ""
        gradeOutlet.text = ""
        
        
    }
    

    

}
