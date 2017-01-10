/*
Operators are unary, binary, or ternary:

- Unary operators operate on a single target (such as -a). Unary prefix operators appear immediately before their target (such as !b), and unary postfix operators appear immediately after their target (such as c!).
- Binary operators operate on two targets (such as 2 + 3) and are infix because they appear in between their two targets.
- Ternary operators operate on three targets. Like C, Swift has only one ternary operator, the ternary conditional operator (a ? b : c).

The assignment operator (a = b) initializes or updates the value of a with the value of b.

- Arithmetic Operators

Swift supports the four standard arithmetic operators for all number types:

Addition (+)
Subtraction (-)
Multiplication (*)
Division (/)

The addition operator is also supported for String concatenation:

"hello, " + "world"  // equals "hello, world"

Remainder Operator

The remainder operator (a % b) works out how many multiples of b will fit inside a and returns the value that is left over (known as the remainder).

NOTE

The remainder operator (%) is also known as a modulo operator in other languages. However, its behavior in Swift for negative numbers means that it is, strictly speaking, a remainder rather than a modulo operation.

- Unary Plus Operator

The unary plus operator (+) simply returns the value it operates on, without any change:

- Compound Assignment Operators

Like C, Swift provides compound assignment operators that combine assignment (=) with another operation. One example is the addition assignment operator (+=):

var a = 1
a += 2
// a is now equal to 3


NOTE

The compound assignment operators do not return a value. For example, you cannot write let b = a += 2.

- Ternary Conditional Operator

The ternary conditional operator is a special operator with three parts, which takes the form question ? answer1 : answer2. It is a shortcut for evaluating one of two expressions based on whether question is true or false. If question is true, it evaluates answer1 and returns its value; otherwise, it evaluates answer2 and returns its value.


- Nil-Coalescing Operator

The nil-coalescing operator (a ?? b) unwraps an optional a if it contains a value, or returns a default value b if a is nil. The expression a is always of an optional type. The expression b must match the type that is stored inside a.

- Range Operators

Swift includes two range operators, which are shortcuts for expressing a range of values.

Closed Range Operator

The closed range operator (a...b) defines a range that runs from a to b, and includes the values a and b. The value of a must not be greater than b.

The closed range operator is useful when iterating over a range in which you want all of the values to be used, such as with a for-in loop.

- Logical Operators

Logical operators modify or combine the Boolean logic values true and false. Swift supports the three standard logical operators found in C-based languages:

Logical NOT (!a)
Logical AND (a && b)
Logical OR (a || b)

*/

// sintaks var digunakan untuk membuat variabel
// deklarasi variabel pada Swift akan langsung mengidentifikasi datanya jika tidak diberi tipe data
var myVariable = 42
myVariable = 50

// sintaks let digunakan untuk mendeklarasikan kosntanta
let myConstant = 42
print(myConstant)

// saat dideklarasikan, variabel atau konstanta harus mempunyai nilai
let implicitInteger = 70
print(implicitInteger)

let implicitDouble = 70.0
print(implicitDouble)

// mendeklarasikan variabel atau konstanta dengan tipe data yang sudah ditentukan
// nilanya tidak boleh nil
let explicitDouble: Double = 70
print(explicitDouble)

let label = "The width is "
let width = 94
// type casting pada Swift
let widthLabel = label + String(width)

// penggunaan titik koma pada swift bersifat opsional
// swift membaca kode secara baris
print(widthLabel);

let apples = 3
let oranges = 5
// identifier yang dimasukkan ke tanda \(nama_variabel) akan otomatis berubah menjadi string
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

// array
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
 
// dictionary seperti Python dengan bentuk [kunci:nilai]
// dictionary pada Swift mempunyai tipe data yang homogen, [TipeDataKunci:TipeDataNilai] sehingga lebih statis
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
print("Mencetak dictionary")
print("Mencetak dalam bentuk tuple")
for i in occupations {
	print(i)
}
print("Mencetak key dan value")
for (i,j) in occupations{
	print ("\(i) mempunyai nilai \(j)")
}

// mendeklarasikan array kosong
let emptyArray = [String]()
// mendeklarasikan dictionary kosong
let emptyDictionary = [String: Float]()

// deklarasi kosong tanpa menentukan tipe data
shoppingList = []
occupations = [:]

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
// perulangan dengan swift
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

// terdapat bentuk tipe data berjenis optional pada Swift
var bentukOptional: String? = nil
print(bentukOptional == nil)
print(bentukOptional)
bentukOptional = "Hello"
print(bentukOptional == nil)
print("Bentuk optional \(bentukOptional)")
// kita dapat membuka bentuk optional menjadi bentuk biasa dengan mengubahnya menjadi unwrapped optional
// dengan cara menambahkan tanda seru(!) setelah nama field. Nilai field tidak boleh nil.
print("Bentuk optional unwrapped \(bentukOptional!)")
 
var namaOptional: String? = "John Appleseed"
var greeting = "Hello!"
// kita dapat menggunakan if untuk menguji nilai optional dengan let.
if let name = namaOptional {
    greeting = "Hello, \(name)"
}
print(greeting)

let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
print(informalGreeting)

// percabangan dengan menggunakan switch
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case "red pepper":
    print("Is it a spicy?")
default:
    print("Everything tastes good in soup.")
}

// dictionary yang berisi array
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
// perulangan dengan menggunakan for
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

// perulangan dengan menggunakan while
var n = 2
while n < 100 {
    n = n * 2
}
print(n)
 
// perulangan dengan menggunakan repeat while
var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)

// perulangan dengan menggunakan tipe for yang kedua.
var total = 0
// perulangan akan terjadi sampai nilai 3
for i in 0..<4 {
    total += i
}
print(total)

total = 0
// perulangan akan terjadi sama nilai 4
for i in 0...4 {
    total += i
}
print(total)

// pada Swift sebuah fungsi mempunyai label untuk setiap parameternya
// label parameter akan menjadi nama variabel parameter jika tidak dideklarasikan
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print (greet(person: "Bob", day: "Tuesday"))

// jika tidak ingin menggunakan label dalam argumen gunakan _ sebagai label
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet("John", on: "Wednesday"))


// sebuah fungsi juga dapat mengembalikan nilai lebih dari satu dalam bentuk tuple
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
// mengambil index 2 dari tuple
print(statistics.2)

// untuk menerima argumen lebih dari satu tambahkan 3 titik setelah tipe data
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
print(sumOf())
print(sumOf(numbers: 42, 597, 12))

// pada swift fungsi dapat memiliki fungsi yang lain
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())

// fungsi pada swift adalah first-class type, fungsi dapat mengembalikan nilai beriba fungsi
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))

// fungsi dapat mempunyai parameter berupa fungsi lagi
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))

// tanda kurung kurawal {} pada swift mempunyai simbol sebagai bagian baru dari suatu objek
// kita dapat memuat fungsi dengan simbol tersebut bahkan tanpa nama fungsinya
// badan fungsi dipisahkan dengan sintaks in
print(numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
}))

// bahkan sebuah fungsi tanpa bersifat implisit
// cara ini pada swift disebut implicit closure
// sebuah parameter otomatis menjadi tipe data yang dikirim dan menjadi nilai kembali (return)
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

// variabel $0 dapat digunakan untuk membaca argumen pertama, $1 digunakan sebagai argumen kedua, $2 yang ketiga dst
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)

// oop
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print(shapeDescription)

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    // init digunakan sebagai konstruktor
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() ->  Double {
        return sideLength * sideLength
    }
    
    // overriding suatu field ditandai dengan sintaks override
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
print(test.area())
print(test.simpleDescription())

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)


// jika suatu objek bernilai nil, akan error jika memanggil instans objek tersebut
// kita dapat menggunakan tanda ? setelah nama field
// jika nilai field adalah nil maka proses untuk memanggil instance tidak akan dilakukan

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength

