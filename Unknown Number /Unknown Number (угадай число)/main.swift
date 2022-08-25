import Foundation
// генерация случайного числа
let randomNumber = UInt8.random(in: 1...250)
print("Компьютер случайным образом загадал число. Вам требуется отгадать его.")
// в переменную будет записываться число с консоли
var myNumber: String?
// цикл с постпроверкой условия
repeat {
    print("Введите ваш вариант и нажмите Enter")
    // получение значения с клавиатуры пользователя
    myNumber = readLine()
    // сравнение введенного и сгенерированного чисел
    if (UInt8(myNumber!) == randomNumber) {
        print("Вы угадали!")
    } else if (UInt8(myNumber!)! < randomNumber) {
        print("Ваш вариант меньше загаданного числа")
    } else if (UInt8(myNumber!)! > randomNumber) {
        print("Ваш вариант больше загаданного числа")
    }
} while randomNumber != UInt8(myNumber!)


