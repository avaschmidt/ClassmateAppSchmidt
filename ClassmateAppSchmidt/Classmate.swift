enum Boat{
    case One,Two,Three,Four,Six,Seven
}


import Foundation

class Classmate{
var name : String
var nickname : String
var grade : Int

    
    init(name: String, nickname: String, grade: Int) {
        self.name = name
        self.nickname = nickname
        self.grade = grade
    }
    
    init(){
        name = "Anon"
        nickname = "Anonmynous Anon"
            grade = 9

    }
    
    
    func getName()->String{
        return name
    }
    
    func getNickname()->String{
        return nickname
    }
    
    func getGrade()->Int{
        return grade
    }

}
