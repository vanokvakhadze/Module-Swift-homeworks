import Foundation

//1.დაწერეთ ფუნქცია რომელიც პარამეტრად მიიღებს String-ს და დააბრუნებს ბულიანს. ფუნქციამ უნდა შეამოწმოს მიღებული სტრინგი სარკისებურია თუ არა (სიტყვა ან წინადადება რომელიც იკითხება ერთნაირად როგორც თავიდან, ისე ბოლოდან მაგ: “ანა”, “აირევი ივერია”, “მადამ”)
func checkText(text : String) -> Bool {
    var arrayOfChar : [Character] = []
    var chars: Character = " "
    
    for t in text {
        chars = t
        arrayOfChar.append(t)
        
    }
    let firstIndex = arrayOfChar[0]
    var arraySize = arrayOfChar.count-1
    let lastIndex = arrayOfChar[arraySize]
    
    return firstIndex == lastIndex ? true : false
}

checkText(text: "anna")

//2.დაწერეთ ფუნქცია რომელიც გადაცემულ რიცხვების array-ს ააკვარდატებს, დაპრინტავს და დააბრუნებს მნიშვნელობას.

func multiplyArray(number : [Int]) -> [Int] {
    var arrayOfnumber: [Int] = []
    var num2: Int
    for num in number {
        num2 = num * num
        arrayOfnumber.append(num2)
    }
    print(arrayOfnumber)
    return arrayOfnumber
}
multiplyArray(number: [1, 2, 3, 4])


//3.დაწერეთ Closure რომელიც გაფილტრავს ლუწ რიცხვებს Int-ების Array-დან.
var filterClosure: ([Int]) -> [Int] = { x in
    var filtered: [Int] = []
    for y in x {
        if y % 2 == 0{
            
            filtered.append(y)
        }
        
    }
    print(filtered)
    return filtered
}
filterClosure([1, 2, 3, 4, 5, 6])

//4.დაწერეთ ფუნქცია, რომელიც პარამეტრად იღებს Int-ების მასივს. Escaping closure-ის მეშვეობით დაბეჭდეთ მიწოდებული მასივის ჯამი 5 წამის შემდეგ. დარწმუნდით რომ closure არის escaping და გამოიძახეთ ის მას შემდეგ რაც ფუნქცია დაბრუნდება.
var deleyaClosure = { (numbers: [Int]) in
    print(numbers)
}

func delayFucntion(numbers: [Int], closure: @escaping([Int]) -> ()) {
    DispatchQueue.main.asyncAfter(deadline:  .now()+5){
        closure(numbers)
    }
    print("something")
}
    
delayFucntion(numbers: [1, 2, 3, 4, 4], closure: deleyaClosure)

////5.შექმენით  კონტაქტების Dict სადაც key არის სახელი და value ტელეფონის ნომერი, დაამატეთ, დაბეჭდეთ/მოძებნეთ და წაშალეთ კონტაქტი
var contacts : [String: Int] = [
    "vano": 525536345,
    "nini": 555821653,
    "kaxa": 552436798
]
//print(contacts)
contacts.updateValue(34543, forKey: "jimi" )
//print(contacts)
contacts.removeValue(forKey: "jimi")
print(contacts)

//6.დაწერეთ ფუნქცია რომელიც პარამეტრად იღებს [String: Int] ტიპის Dictionary-ს და დააბრუნებს ანბანურად დალაგებულ dictionary-ს key ელემენტების მასივს.

func sortedstring(contact: [String : Int]) -> [String]{
    var stringArray: [String] = []
    for (str, num) in contact{
        stringArray.append(str)
    }
    stringArray = stringArray.sorted(by: < )
    print(stringArray)
    return stringArray
}
sortedstring(contact: ["rezo":23, "vano": 25, "ana": 1, "elene": 32, "givi": 32432])



//7.შექმენით Double-ების მასივი, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ მასივში და დაბეჭდეთ.
var doubleNumberArray: [Double] = [4, 5, 6, 5345, 6436, 6756, 32]
let gm = doubleNumberArray.count
for i in 0..<gm {
    for j in 1..<gm {
        if doubleNumberArray[j-1] > doubleNumberArray[i] {
            var alternum = doubleNumberArray[j-1]
            doubleNumberArray[j-1] = doubleNumberArray[i]
            doubleNumberArray[i] = alternum
        }
    }
}
print(doubleNumberArray)


//მოცემულია Dictionary სადაც წარმოდგენილია ლელა წურწუმიას სიმღერებისა და მათი ხანგრძლივობა(წმ) მონაცემები:

let lelaWhatMovementIsThis: [String: Int] = [
    "ღამის სიჩუმე გაფანტე": 235,
    "ვიხსენებ ყველაფერს თავიდან": 219,
    "სულელი წვიმა": 231,
    "ალალ მე": 231,
    "იდუმალი ღამე": 221,
    "ჩუმად ნათქვამი": 199,
    "თეთრი ქარავანი": 221,
    "ძველი ვერხვები": 193
]

//1.დაწერეთ ფუნქცია რომელიც გამოითვლის და დაბეჭდავს სიღერების ჯამურ ხანგრძლივობას წუთებში და წამებში

func minuteTosecond(song: [String: Int])  {
    var minutes: Int
    var seconds: Int
    for (s, m) in song {
        minutes = m / 60
        seconds = m % 60
        print(s, "\(minutes):\(seconds) sec")
    }
}
minuteTosecond(song: lelaWhatMovementIsThis)

//2.დაწერეთ ფუნქცია რომელიც იპოვის და დაბეჭდავს ყველაზე ხანგრძლივი და ხანმოკლე სიმღერის სახელს.
func ShortAndLong(songs: [String: Int])  {
    let songName = songs.sorted(by: { (keyVal1, keyVal2) -> Bool in
        keyVal1.value > keyVal2.value
    })
    var songsValue =  songName.count - 1
    print("ყველაზე ხანგრძლივი სიმღერა - ",songName[0].key)
    print("ყველაზე ხანმოკლე სიმღერა - ", songName[songsValue].key)
}
ShortAndLong(songs: lelaWhatMovementIsThis)

//3.დაწერეთ ფუნქცია რომელიც გამოითვლის სიმღერების საშუალო ხანგრძლივობას

func sashualo(music: [String: Int]) {
    var d = 0
    let all = music.values.count-1
    for (r,t) in music {
       d = d + t
    }
    var c = d / all
    print(c, "second")
    print("\(c / 60):\(c % 60 )")
}
sashualo(music: lelaWhatMovementIsThis)


//4.//დაწერეთ ფუნქცია რომელიც შემთხვევითად ამოარჩევს სიმღერას და დაბეჭდავს მის სახელს
func randomanisation(randomusic: [String : Int]) {
     var chosed =  randomusic.randomElement()?.key
     if let chosed{
        print(chosed)
    }
}
randomanisation(randomusic: lelaWhatMovementIsThis)
