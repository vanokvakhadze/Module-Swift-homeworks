import Foundation

//1.შექმენით Enum-ი სახელით WeekDay შესაბამისი ქეისებით. დაწერეთ ფუნქცია რომელიც იღებს ამ ენამის ტიპს და ბეჭდავს გადაწოდებული დღე სამუშაოა თუ დასვენების.

enum WeekDay: String{
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

func findDay(days: WeekDay){
    if days.rawValue == "Sunday" || days.rawValue == "Saturday"{
        print("weekend")
    }else {
        print("workday")
    }
}

findDay(days: .Monday)

//2.შექმენით Enum-ი სახელად GialaSquad, რომელიც აღწერს გია სურამელაშვილის ფანკლუბის წევრების დონეებს ქეისებით : “TsigroviManto”, “MoshishvlebuliMkerdi”, “TuGapatio”. შექმენით ფროფერთი GialaSquad-ში, რომელსაც ექნება ინფორმაცია თუ რა ღირს თითოეული დონე თვეში (დონეები დალაგებულია ძვირიდან იაფისაკენ). დაუმატეთ მეთოდი რომელიც დაბეჭდავს თითოეული დონის ფასს

enum GialaSquad: Int {
    case TsigroviManto
    case MoshishvlebuliMkerdi
    case TuGapatio
    
    var prices: Int {
      switch self {
            case .TsigroviManto:
                return 200
            case .MoshishvlebuliMkerdi:
                return 140
            case .TuGapatio:
                return 100
          }
       }
    func getPrice(){
        print(self.prices)
            }
}

var givePice =  GialaSquad.TuGapatio
givePice.getPrice()


//
//3.შექმენით enum-ი Weather შემდეგი ქეისებით, Sunny, Cloudy, Rainy და Snowy. ამ ქეისებს უნდა ჰქონდეს associated value Celsius-ის სახით. დაწერეთ function რომელიც მიიღებს ამ enum-ს, და მოგვცემს რეკომენდაციას რა უნდა ჩავიცვათ შესაბამისი ამინდის მიხედვით.

 enum Weather {
    case Sunny(celsius: Int)
    case Cloudy(celsius: Int)
    case Rainy(celsius: Int)
    case Snowy(celsius: Int)
}


func weatherHints(about weahter: Weather) {
    switch weahter {
    case .Sunny(celsius: let celsius) where celsius > 25:
        print("სათვალე გაიკეთე")
    case .Cloudy(celsius: let celsius) where celsius > 15 && celsius < 25:
        print("მზისგან დამცავი კრემი არ გინდა")
    case .Rainy(celsius:  let celsius) where celsius > 5 && celsius <  15:
        print("ქოლგა არ დაგრჩეს")
    case .Snowy(celsius: let celsius) where celsius < 5:
        print("ძალიან თბილად ჩაიცვი")
    case .Sunny, .Cloudy, .Rainy, .Snowy:
            break
    }
}
weatherHints(about: .Cloudy(celsius: 16))
 

//4.შექმენით struct-ი Kanye, ფროფერთებით: album, releaseYear. ამის შემდეგ შექმენით array-ი Kanye-ს ტიპის, ჩაამატეთ რამოდენიმე Kanye-ს ობიექტი, და შეავსეთ მასივი კანიეებით. დაწერეთ ფუნქცია, რომელიც მიიღებს ამ კანიეების მასივს და წელს. ფუნქციამ უნდა დაგვიბრუნოს ყველა ალბომი რომელიც გამოშვებულია გადაწოდებული წლის შემდეგ და დაბეჭდოს ისინი.
//
struct Kanye {
    var album: String
    let releaseYaer: Int
    
    init(album: String, releaseYaer: Int){
        self.album = album
        self.releaseYaer = releaseYaer
    }
}

var kanye1 = Kanye(album: "The College Dropout", releaseYaer: 2004)
var kanye2 = Kanye(album: "Late Registration", releaseYaer: 2005)
var kanye3 = Kanye(album: "Graduation", releaseYaer: 2007)
var kanye4 = Kanye(album: "808s & Heartbreak", releaseYaer: 2008)
var kanye5 = Kanye(album: "My Beautiful Dark Twisted Fantasy", releaseYaer: 2010)

var arrayOfkanye: [Kanye] = [kanye1, kanye2, kanye3, kanye4, kanye5]

func calculateKanye(array: [Kanye], year: Int) -> [String] {
    var albumArray: [String] = []
    var str: String = ""
    for albums in array {
        if albums.releaseYaer > year {
            str = albums.album
            albumArray.append(str)
        }
     
    }
    print(albumArray)
    return albumArray
}
calculateKanye(array: arrayOfkanye, year: 2005)

//5.შექმენით String-ის ტიპის lazy property wrapper სახელად, cachedData. ინიციალიზება გაუკეთეთ ქლოჟერით რომელიც აბრუნებს სტრინგს მნიშვნელობით “lazy ინიციალიზებულია”. მიწვდით ამ ფროფერთის და დაბეჭდეთ მისი მნიშვნელობa

/// ეს არის დამატებული 

@propertyWrapper struct CachedData {
    var text: String?
    lazy var textValue = "lazy ინიციალიზებულია"
    
    var wrappedValue: String {
       mutating get{
           if text == nil {
               text = textValue
               return  textValue
           }else {
               return text!
           }
        }
        set {
            text = newValue
        }
    }
}


struct givetext {
    @CachedData var newText: String
}

var str = givetext()
str.newText

