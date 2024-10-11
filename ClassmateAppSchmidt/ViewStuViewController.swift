import UIKit

class ViewStuViewController: UIViewController {
    
    @IBOutlet weak var selectedGradeOutlet: UILabel!
    
    @IBOutlet weak var selectedNicknameOutlet: UILabel!
    
    @IBOutlet weak var selectedNameOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
            }
    
    
    override func viewDidAppear(_ animated: Bool) {
        for classmate in AppData.objects{
            if AppData.selectedStudent == classmate.getName() {
                var selectedName = classmate.getName()
                var selectedGrade = classmate.getGrade()
                var selectedNickname = classmate.getNickname()
                selectedNameOutlet.text = "Name: \(selectedName)"
                selectedNicknameOutlet.text = "Nickname: \(selectedNickname)"
                selectedGradeOutlet.text = "Grade: \(selectedGrade)"
    }
            else{
                selectedNameOutlet.text = "Error"
                selectedNicknameOutlet.text = "Error"
                selectedGradeOutlet.text = "Error"
            }
    
        }
        
        
        
        
    }
    

    

}
