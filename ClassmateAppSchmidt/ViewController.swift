import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stuImageOutlet: UIImageView!
    
    @IBOutlet weak var gradeOutlet: UILabel!
   
    @IBOutlet weak var nicknameOutllet: UILabel!
    
    @IBOutlet weak var nameOutlet: UILabel!
    
    var index = 0
    
    var classmates = [Classmate]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        classmates[0] = Classmate(name: "Justin", nickname: "Wicked Weber", grade: 12)
        classmates[1] = Classmate(name: "Evan", nickname: "Flutin Evan", grade: 11)
        classmates[2] = Classmate(name: "Eva", nickname: "No Pickles Noftz", grade: 12)
        classmates[3] = Classmate(name: "Ava", nickname: "ABBA Ava", grade: 12)
        classmates[4] = Classmate(name: "Brennan", nickname: "Breaking Brennan", grade: 10)
        classmates[5] = Classmate(name: "Cam", nickname: "Chef Cam", grade: 12)
        classmates[6] = Classmate(name: "Jayden", nickname: "Sleepy Sawyer", grade: 12)
        classmates[7] = Classmate(name: "John", nickname: "Gymmy John", grade: 12)
        classmates[8] = Classmate(name: "Ryan Spencer", nickname: "Rainbow Ryan", grade: 11)
        classmates[9] = Classmate(name: "Sean", nickname: "Boat Gone Sean", grade: 11)
        classmates[10] = Classmate(name: "Michael", nickname: "Michael Michael Motocycle", grade: 11)
        classmates[11] = Classmate(name: "Logan", nickname: "GoogBall Googan", grade: 11)
        classmates[12] = Classmate(name: "Daniel", nickname: "Bananiel", grade: 11)
        classmates[13] = Classmate(name: "Matthew", nickname: "Glitch Fitch", grade: 11)
        classmates[14] = Classmate(name: "Peter", nickname: "Peter Kickle", grade: 11)
        classmates[15] = Classmate(name: "Ryan Stark", nickname: "Rat Ryan", grade: 11)

    }
    
    override func viewDidAppear(_ animated: Bool) {
        nameOutlet.text = "Name: \(classmates[0].getName())"
        nicknameOutllet.text = "Nickname: \(classmates[0].getNickname())"
        gradeOutlet.text = "Grade: \(classmates[0].getGrade())"
    }


}

