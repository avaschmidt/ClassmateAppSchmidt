

import UIKit

class EditViewController: UIViewController {
    @IBOutlet weak var gradeChangeOutlet: UITextField!
    @IBOutlet weak var nicknameChangeOutlet: UITextField!
    @IBOutlet weak var nameChangeOutlet: UITextField!
    @IBOutlet weak var stuSelectedOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
    @IBAction func enter2Action(_ sender: UIButton) {
        if gradeChangeOutlet.text != nil{
            for student in AppData.objects{
                if student.getName() == stuSelectedOutlet.text{
                    if nicknameChangeOutlet != nil{
                        student.setNickname(newNickname: nicknameChangeOutlet.text!)
                    }
                    if nameChangeOutlet.text != nil{
                        student.setName(newName: nameChangeOutlet.text!)
                    }
                    if gradeChangeOutlet.text != nil{
                        student.setGrade(newGrade: Int(gradeChangeOutlet.text!)!)
                    }
                    
                }
            }
        }
    }
    
}
