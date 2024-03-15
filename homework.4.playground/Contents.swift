import Foundation

    //1.while ციკლის გამოყენებით, 1-დან 20-მდე დაბეჭდეთ ყველა კენტი რიცხვის ნამრავლი.

var number  = 0
var number1 = 1
while number < 20{
    number += 1
    if number % 2 != 0 {
        number1 = number1 * number
        //print(number1)
    }
}
print("----")



//2.შექმენით String ტიპის ცვლადი და ციკლის გამოყენებით შემოაბრუნეთ ის, მაგ: თუ გვაქვს “Test” უნდა მივიღოთ “tseT”
var str = "Test"
var reversedStr = ""
for char in str{
    
    reversedStr = String(char) + reversedStr
}
print(reversedStr)

print("----")



//3. while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."
    

var x = 3

 while x > 1 {
       switch x % 3 {
       case 0 :
           print("🔴")
       case 1 :
        print("🌕")
      case 2 :
            print("🟢")
        default:
         break
       }
     x += 1

}
print("----")




//4.Taylor Swift-ის კონცერტის ბილეთები იყიდება, თუმცა რაოდენობა ძალიან შეზღუდულია. While loop-ის მეშვეობით შექმენით ბილეთების გაყიდვის სიმულაცია და ყოველ გაყიდულ ბილეთზე დაბეჭდეთ “ბილეთი გაყიდულია, დარჩენილია მხოლოდ X რაოდენობა”, მანამ სანამ ბილეთების რაოდენობა მიაღწევს 0-ს, რის შემდეგაც ბეჭდავთ - “ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე”

let tickets = 10
var soldTickets = 0
repeat {
    soldTickets += 1
    if tickets - soldTickets != 0 {
        print("ბილეთი გაყიდულია, დარჩენილია მხოლოდ \(tickets - soldTickets) რაოდენობა")
    }
    
}while tickets > soldTickets
       print("ყველა ბილეთი გაყიდულია გაყიდულია გელოდებით კონცერტზე”")

print("----")





//5.შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)
var array = [1, 2, 3, 4, 5, 2]
 
var set = Set(array)
 
if set.count == array.count {
    print(" ყველა ელემენტი განსხვავებულია")
} else {
    print(" შეიცავს მსგავს ელემენტებს")
}
print("----")




//6.დაწერეთ ქლოჟერი რომელიც გამოითვლის ორი რიცხვის სხვაობას და დააბრუნებს მიღებულ მნიშვნელობას
var calculateClosure: (Int, Int) -> () = { x, y in
    print(x - y)
}
calculateClosure(4, 5)

print("----")




//7.დაწერეთ ფუნქცია, რომელსაც გადააწვდით String ტიპის პარამეტრს. დაითვალეთ ამ პარამეტრში თანხმოვნების რაოდენობა და დაბეჭდეთ ის.
func calculateConsonant(text: String){
    var textOutput = ""
    let CharacterRemove : [Character] = ["a", "e", "i", "o", "u", " "]
    for txt in text {
        if CharacterRemove.contains(txt){
            continue
        }
        textOutput.append(txt)
    }
    print("ტექსტში ხმოვენბის გარეშე ", textOutput)
    print("ტექსტში თანმხოვნების რაოდენობა არის ", textOutput.count)
}
calculateConsonant(text: "kvakhadze")

print("----")











//9. დაწერეთ ფუნქცია, რომელსაც გადააწვდით int ტიპის პარამეტრს. გამოითვალეთ ამ პარამეტრის ფაქტორიალი და დაბეჭდეთ
func factorial(number : Int){
    var x = 1
    for y in x...number{
        x *= y
    }
    print(x)
    
}
factorial(number: 4)
print("----")



//10.შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array.

var arrayOfints = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var oddNum : [Int] = []
var eveNum : [Int] = []

for w in arrayOfints {
    if w % 2 == 0 {
        eveNum.append(w)
    }else {
        oddNum.append(w)
    }
}
print(eveNum)
print(oddNum)

