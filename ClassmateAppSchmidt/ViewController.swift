import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var stuImageOutlet: UIImageView!
    @IBOutlet weak var nameOutlet: UILabel!
    @IBOutlet weak var gradeOutlet: UILabel!
    @IBOutlet weak var nicknameOutlet: UILabel!
    
    
    
    var index = 0
    var timesSorted = 0
    
    var classNames = [String]()
    
    var classmates = [Classmate]()
    
    
    var freshmen = [String]()
    var sophomores = [String]()
    var juniors = [String]()
    var seniors = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        classmates.append(Classmate(name: "Justin", nickname: "Wicked Weber", grade: 12))
        classmates.append(Classmate(name: "Evan", nickname: "Flutin Evan", grade: 11))
        classmates.append(Classmate(name: "Eva", nickname: "No Pickles Noftz", grade: 12))
        classmates.append(Classmate(name: "Ava", nickname: "ABBA Ava", grade: 12))
        classmates.append(Classmate(name: "Brennan", nickname: "Breaking Brennan", grade: 10))
        classmates.append(Classmate(name: "Cam", nickname: "Chef Cam", grade: 12))
        classmates.append(Classmate(name: "Jayden", nickname: "Sleepy Sawyer", grade: 12))
        classmates.append(Classmate(name: "John", nickname: "Gymmy John", grade: 12))
        classmates.append(Classmate(name: "Ryan Spencer", nickname: "Rainbow Ryan", grade: 11))
        classmates.append(Classmate(name: "Sean", nickname: "Boat Gone Sean", grade: 11))
        classmates.append(Classmate(name: "Michael", nickname: "Michael Michael Motocycle", grade: 11))
        classmates.append(Classmate(name: "Logan", nickname: "GoogBall Googan", grade: 11))
        classmates.append(Classmate(name: "Daniel", nickname: "Bananiel", grade: 11))
        classmates.append(Classmate(name: "Matthew", nickname: "Glitch Fitch", grade: 11))
        classmates.append(Classmate(name: "Peter", nickname: "Peter Kickle", grade: 11))
        classmates.append(Classmate(name: "Ryan Stark", nickname: "Rat Ryan", grade: 11))
        AppData.objects = classmates
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if AppData.added == true{
            print("trying to add")
            classmates.append(Classmate())
            classmates[classmates.count-1].setName(newName: AppData.newStuName)
            classmates[classmates.count-1].setNickname(newNickname: AppData.newStuNickname)
            classmates[classmates.count-1].setGrade(newGrade: AppData.newStuGrade)
            AppData.added = false
           // AppData.objects = classmates

        }
       //classmates = AppData.objects
       // AppData.objects.removeAll()
        nameOutlet.text = "Name: \(classmates[0].getName())"
        nicknameOutlet.text = "Nickname: \(classmates[0].getNickname())"
        gradeOutlet.text = "Grade: \(classmates[0].getGrade())"
        stuImageOutlet.image = UIImage(named: "\(classmates[0].getName())")
        AppData.namesOfEveryone.removeAll()
        classNames.removeAll()
        freshmen.removeAll()
        sophomores.removeAll()
        juniors.removeAll()
        seniors.removeAll()
       
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        AppData.newStuGrade = 0
        AppData.newStuName = ""
        AppData.newStuNickname = ""
    }
    
    @IBAction func nextAction(_ sender: UIButton) {
        index = index + 1
        if index < classmates.count{
            nameOutlet.text = "Name: \(classmates[index].getName())"
            nicknameOutlet.text = "Nickname: \(classmates[index].getNickname())"
            gradeOutlet.text = "Grade: \(classmates[index].getGrade())"
            if UIImage(named: "\(classmates[index].getName())") == nil{
                stuImageOutlet.image = UIImage(named: "tiger")
            }
            else{
                stuImageOutlet.image = UIImage(named: "\(classmates[index].getName())")
            }

        }
        else{
            index = 0
            nameOutlet.text = "Name: \(classmates[0].getName())"
            nicknameOutlet.text = "Nickname: \(classmates[0].getNickname())"
            gradeOutlet.text = "Grade: \(classmates[0].getGrade())"
            stuImageOutlet.image = UIImage(named: "\(classmates[0].getName())")
        }
    }
    
    @IBAction func sortACTION(_ sender: UIButton) {
        switch timesSorted {
        case 0:
            print("Sorted alphabetically by first name A to Z")
            for student in classmates{
                classNames.append(student.getName())
            }
            classNames.sort(by: <)
            AppData.namesOfEveryone = classNames
            timesSorted = 1
            performSegue(withIdentifier: "sort", sender: self)
        case 1:
            print("Sorted alphabetically by first name Z to A")
            for student in classmates{
                classNames.append(student.getName())
            }
            classNames.sort(by: >)
            AppData.namesOfEveryone = classNames
            timesSorted = 2
            performSegue(withIdentifier: "sort", sender: self)
        case 2:
            print("Sorted by grade level")
            for student in classmates{
                switch student.getGrade() {
                case 9:
                    freshmen.append(student.getName())
                case 10:
                    sophomores.append(student.getName())
                case 11:
                    juniors.append(student.getName())
                case 12:
                    seniors.append(student.getName())
                default:
                    print("Error Not A High School Student")
                }
            }
            freshmen.sort(by: <)
            sophomores.sort(by: <)
            juniors.sort(by: <)
            seniors.sort(by: <)
            AppData.namesOfEveryone.append(contentsOf: freshmen)
            AppData.namesOfEveryone.append(contentsOf: sophomores)
            AppData.namesOfEveryone.append(contentsOf: juniors)
            AppData.namesOfEveryone.append(contentsOf: seniors)
            timesSorted = 3
            performSegue(withIdentifier: "sort", sender: self)
        case 3:
            print("Sorted randomly")
            for student in classmates{
                classNames.append(student.getName())
            }
            classNames.shuffle()
            AppData.namesOfEveryone.append(contentsOf: classNames)
            timesSorted = 0
            performSegue(withIdentifier: "sort", sender: self)
        default:
            print("Sort error")
        }
    }
    
    
    @IBAction func addAction(_ sender: UIButton) {
        performSegue(withIdentifier: "add", sender: self)
    }
    
    
    @IBAction func editAction(_ sender: UIButton) {
        performSegue(withIdentifier: "edit", sender: self)
    }
    
}

