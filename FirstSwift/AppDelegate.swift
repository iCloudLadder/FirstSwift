//
//  AppDelegate.swift
//  FirstSwift
//
//  Created by syweic on 14-6-17.
//  Copyright (c) 2014 ___iSoftStone___. All rights reserved.
//

import UIKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        // Override point for customization after application launch.
        
        var vc = RootViewController ();
        vc.title = "rootViewContorller"
        var nav = UINavigationController (rootViewController: vc);
        nav.navigationBar.hidden = true;
        self.window!.rootViewController = nav;
        
        
       /***************************************************/
        
        println("*************************String**************************")
        // 遍历所有的字符
        var myString = "I am string"
        for chara in myString{
            print(chara)
        }
        println("")
        // 空字符串
        var myTwoString = String()
        if myTwoString.isEmpty{
            println("myTwoString is nil")
        }else{
            println("myTwoString is \(myTwoString)")
        }
        // 字符串的长度
        println("myString length is \(countElements(myString))")
        // 字符串的拼接
        
        var string1 = "Hello"
        var string2 = "World"
        var character1:Character = " "
        var character2:Character = "!"
        
        println(string1 + character1 + string2 + character2)
        
        var plusString = string1 + character1
        plusString += string2
        plusString += character2
        
        println("plusString is \"\(plusString)\"")
        
        // 字符串插入 内容
        let multiplier = 5
        let message = "\(multiplier) times 2.4 is \(Double(multiplier)*2.4)"
        println(message)
        
        // 字符串 比较
        let stringOne:String = "string string"
        let stringTwo = "string string"
        if stringOne == stringTwo{
            println("These two strings are considered equal")
        }else{
            println("not equal")
        }
        
        
        /*
        // 包含字符串
        // 以 字符串 开头
        // 以 字符串 结尾
        */
        
        let stingThree:String = "Hello Boys and Girls! Welcome to my swift world!"
        
        if stingThree.hasPrefix("Hello"){
            println("Hello is YES")
        }else{
            println("Hello is NO")
        }
        
        if stingThree.hasSuffix("world!"){
            println("world is YES")
        }else{
            println("world is NO")
        }
        // 大写
        println(stingThree.uppercaseString)
        // 小写
        println(stingThree.lowercaseString)
        
        
        let stringUTF = "I am a Swift 我擦"
        // UTF8
        for codeUnit in stringUTF.utf8{
            print("\(codeUnit) ")
        }
        println("")
        // UTF16
        for codeUnit in stringUTF.utf16{
            print("\(codeUnit) ")
        }
        println("")
        // UTF16
        for codeUnit in stringUTF.unicodeScalars{
            print("\(codeUnit.value) ")
        }
        println("")
        
        
        /***********************Array****************************/
        
        var myArray: String[] = ["one","two"]
        println(myArray)
        // 添加元素
        myArray.append("three")
        println(myArray)
        myArray += "four"
        println(myArray)
        // 添加多个元素
        myArray += ["five","six","seven"]
        println(myArray)
        // 取出元素
        println("value at index 3 is \(myArray[3])")
        // 从新赋值
        myArray[2] = "eight"
        println(myArray)
        // 替换多个元素
        myArray[2..4] = ["3","4"]
        println(myArray)
        // 插入元素
        myArray.insert("5",atIndex:4)
        println(myArray)
        // 删除元素
        myArray.removeAtIndex(4)
        println(myArray)
        // 删除最后一个元素
        myArray.removeLast()
        println(myArray)
        // 删除多个元素
        myArray[2...3] = []
        println(myArray)
        // 便利所有元素
        for item in myArray{
            println(item)
        }
        // 返回下标 的遍历
        for (index, value) in enumerate(myArray){
            println("item \(index) : \(value)")
        }
        // 实例化 数组
        var oneArray = Int[](count:3,repeatedValue:4)
        println(oneArray)
        
        var twoArray = Int[](count:3,repeatedValue:5)
        println(twoArray)
        
        var threeArray = oneArray + twoArray
        println(threeArray)
        
        oneArray += twoArray
        println(oneArray)
        
        
        
        
        
        
        
        
        
        println("***********************Dictionary****************************")
        
        /***********************Dictionary****************************/
        
        var dictOne = ["1":"one","2":"two"]
        println(dictOne)
        dictOne["3"] = "three"
        println(dictOne)
        dictOne["3"] = "four"
        println(dictOne)
        // 更改元素值 或 添加新的元素 返回值为被改变的 key 对应的 value
        let oldValue = dictOne.updateValue("four",forKey:"3") // 用 "4" 的key试试
        println(dictOne)
        println("old value = \(oldValue)")
        // 根据key取出value
        if let getValue = dictOne["1"]{
            println("value atIndex 2 is \"\(getValue)\"")
        }else{
            println("value is nil")
        }
        // 删除元素
        
        dictOne["3"] = nil
        println(dictOne)
        dictOne["4"] = "four"
        println(dictOne)
        // 返回值 为 被删除的 key对应的value
        let removedValue = dictOne.removeValueForKey("4")
        println(dictOne)
        println("removedValue = \(removedValue)")
        
        // 遍历字典
        for (key ,value) in dictOne{
            println("key = \(key),value = \(value)")
        }
        // 遍历字典的所有 key 值
        for key in dictOne.keys{
            println("key = \(key)")
        }
        // 遍历字典的所有 value 值
        for value in dictOne.values{
            println("value = \(value)")
        }
        // 字典的所有key 组成数组
        let keys = Array(dictOne.keys)
        println("all keys array = \(keys)")
        let values = Array(dictOne.values)
        println("all values array = \(values)")
    
        
        
        
        println("***********************switch****************************")
        
        let numberOne = 4
        
        switch numberOne{
        case 1:
            println("number is one")
        case 2:
            println("number is two")
        default:
            println("number is \(numberOne)")
            
        }
        
        
        let somePoint = (0,0)
        switch somePoint{
        case (0,0):
            println("\(somePoint) is at the origin")
        case (_,0):
            println("\(somePoint) is on the x-axis")
        case (0,_):
            println("\(somePoint) is on the y-axis")
        case (-2...2,-2...2):
            println("\(somePoint) is inside the box")
        default:
            println("\(somePoint) is outside of the box")
        
        }
        
        
        // fallthrough
        let breakNum = 2
        switch breakNum{
        case 1:
            println("one")
            // break
        case 2:
            println("two")
            fallthrough
            
        case 5:
            println("five")
            
        default:
           println("end")
        
        
        }
        
        var loopNum = 0
        label1:while loopNum < 10{
            loopNum++
            
            switch loopNum{
            case 1:
                println("continue")
                continue label1
            case 8:
                println("break")
                break label1
            default:
                println(loopNum)
                
            }
        
        }
        
        func halfOpenRangeLength(start: Int, end: Int) -> Int{
            return end - start
        }
        
        println(halfOpenRangeLength(1,10))
        
        
        
        /*******************************************/
        println("-------------------------------------")
        // 内部改变参数值
        var myParameters = 10
        func myFuncOne(var #numberPar: Int){
            numberPar = numberPar+1
            println("the par is \(numberPar)")
        }
        myFuncOne(numberPar:myParameters)
        println("my par is \(myParameters)")
        
        
        // in-out parameters
        
        func swapTwoInts(inout a:Int , inout b:Int){
            println("a = \(a) ,b = \(b)")
            /*
            a = a+b
            b = a-b
            a = a-b
            
            let temInt = a^b
            a = temInt^a
            b = temInt^b
            */
            let temInt = a
            a = b
            b = temInt
            println("a = \(a) ,b = \(b)")
        }
        var aa = 5
        var bb = 6
        println("aa = \(aa), bb = \(bb)")
        swapTwoInts(&aa,&bb)
        println("aa = \(aa), bb = \(bb)")
        
//        var otherNameForFunc:(Int, Int)->() = swapTwoInts
        
        func addTwoInts(a:Int, b:Int) -> Int{
            return a+b
        }
        
        var addTwoIntsAnotherName:(Int, Int)->Int = addTwoInts
        var kkk = addTwoInts
        println("a + b = \(kkk(3,5))")
        
        
        // 6.24
        func backwards(aa:Int, bb:Int) ->Bool{
        
            return aa > bb
        }
        
        var numbers = [4,3,8,34,3,90,2,0]
        println(numbers)
        
        // backwards  
        // {(aa:Int, bb:Int) ->Bool in return aa>bb}
        // {aa,bb in return aa>bb}
        // {aa,bb in aa>bb}
        // {$0>$1}
        // sort(numbers, >)
        var reversed = sort(numbers){$0>$1}
        println(reversed)
        
        
        let oneNumber = [34]
        let strings = oneNumber.map{
            (var number)->String in
            return "number = \(number+10)"
        }
        println(strings)
        
        
        ////////////////////////////////////////////
        println("------------------------枚举----------------------------")
        
        enum CompassPoint:Int{
            case North = 5
            case South
            case East
            case West
        }
        println(CompassPoint.West)
        
        var directionToHead = CompassPoint.North
        directionToHead = .East
        
        switch directionToHead{
        case .North:
            println("North")
        case .South:
            println("South")
        case .East:
            println("East")
        case .West:
            println("West")
        }
        let aaaa = CompassPoint.fromRaw(6)
        println(aaaa?.toRaw())
        
        /************************************************/
        println("------------------------结构体，类----------------------------")
        struct Resolution{
            var width = 0
            var height = 0
        }
        
        class VideoMode {
            var resolution = Resolution()
            var interlaced = false
            var frameRate = 0.0
            // var name: String?
        
        }
        
        let someVideoMode = VideoMode()
       
        let someResolution = Resolution(width:222,height:1111)
        println(someResolution.width)
        
        
        println(someVideoMode.resolution.width)
        someVideoMode.resolution.width = 1000
        println(someVideoMode.resolution.width)
        
        var oneVideo = VideoMode()
        var anotherVideo = oneVideo
        var twoVideo = VideoMode()
        if oneVideo === anotherVideo{
            println("same")
        }else{
            println("no same")
        }
        
        if oneVideo === twoVideo{
            println("yes")
        }else{
            println("no")
        }
        
        if oneVideo !== twoVideo{
            println("one == two")
        }else{
            println("one != two")
        }
        
        if oneVideo !== anotherVideo{
            println("one === another")
        }else{
            println("one !== another")
        }
        
        
        
        
        
        
        
        
        
        
        
        
        /*
        // 打印后回车
        println("ssd")
        // : 后指定数据类型
        let floatValue:Float = 4
        println("floatValue",floatValue)
        println("dsf \(floatValue)")
        
        // 类型转换
        let lable = "The width is "
        let width = 49
        var str = String(width)
        println("str = "+str)
        let text = lable + String(width)
        println(text)
        // 另类类型转化
        let value1:Float = 4.0
        let value2:Float = 3.0
        let string1 = "hello pobo \(value1 + value2)"
        println(string1)
        // 数组
        println("-----------------------------------")
        var array = ["one","two","three","four"]
        for arrayValue in array{
            println(arrayValue)
        }
        println("-----------------------------------")
        array[1] = "five"
        for arrayValue in array{
            println(arrayValue)
        }
        println("-----------------------------------")
        // 字典
        var dictionary = ["key1":"value1","key2":"value2"]
        for (key,value) in dictionary{
            println(key)
        }
        
        dictionary["key1"] = "hello"
        println("-----------------------------------")
        for dictValue in dictionary{
            println(dictValue)
        }
        
        println("-----------------------------------")
        var optionString:String? = "john"
        optionString = nil
        var greeting = "hello"
        if let name = optionString{
            greeting = "hello,\(name)"
            println(greeting)
        }else{
            println(optionString)
        }
        
        println("-----------------switch------------------")
        let vegetable = "red papper"
        switch vegetable{
        case "one":
            println("one")
        case "two","red papper":
            println("two")
        case let x where x.hasSuffix("red"):
            println("three")
        default:
            println("end")
            
        }
        println("-----------------function------------------")
        
        func myFuncNoReturn(printStr:String){
            println(printStr)
        }
        
        myFuncNoReturn("do not return")
        
        func myFunc(one:Int,two:Int) -> Int{
        
            return one+two
        }
        
        println(myFunc(1, 2))
        
        println("-----------------function-----sum-------------")
        
        func sumAllNumber(arr numbers: Int[]) -> Int{
            var sumNumber = 0
            for number in numbers{
                sumNumber += number
            }
            return sumNumber
        }
        
        
        println(sumAllNumber(arr:[1,2,3,4]))
        
        println("-----------------function-----function-------------")
        
        func myFuncHaveFunc() -> Int{
            var startValue = 7
            func addOneNumber(){
                startValue += 4
            }
            addOneNumber()
            return startValue
        }
        
        println(myFuncHaveFunc())
        
        println("-----------------return-----function-------------")
        
        func myFuncReturnFunc() -> (Int -> Int){
            func beReturnFunc(oneValue:Int) ->Int{
                return 2*oneValue
            }
            return beReturnFunc
            
        }
        
        var myFuncTwo = myFuncReturnFunc()
        println(myFuncTwo(6))
        
        var arrInt = [1, 5, 3, 12, 2]
        for number in arrInt{
            print("\(number) " )
        }
        println(" ")
        // 对数组元素 进行 降序 排列
        sort(arrInt) { $0 > $1 }
        for number in arrInt{
            print("\(number) " )
        }
        println(" ")

        // 对数组每个元素，进行一次表达式操作
        println(arrInt.map({
            (number:Int)->Int in
            let endNum = number*3
            return endNum
            }))
        
        // 同上

        var arrayInt = [1,2,3,4]
        println(arrayInt.map({
                number in number*2
            }))
        println("-------------class----------------------")
        // 类
        class myFirstClass{
            var x = 0
            func firstClassFunc() ->String{
                return "x = \(x)"
            }
            
        }
        
        var myClass = myFirstClass()
        myClass.x = 8
        println( myClass.firstClassFunc())
        println("-------------class----------------------")

        class mySecondClass{
            var numberOfSides: Int = 0
            var name: String
            // 构造函数
            init(name:String){
                println("init mySecondClass \(numberOfSides)")
                println("init mySecondClass \(name)")
                self.name = name
            }
            //
            func simpleDescription() ->String{
                return "A shape with \(numberOfSides) sides"
            }

        
        }
        
        var secondClass = mySecondClass(name:"swift")
        secondClass.numberOfSides = 5
        println(secondClass.simpleDescription())
        
        // subClass
        println("-------------subClass----------------------")
        
        class mySecondClassSubClass:mySecondClass{
            var sideLength: Double
            let addd = 9
            init(sideLength: Double, name: String){
                println("1")
                self.sideLength = sideLength
                super.init(name: name)
                println("2")

                numberOfSides = 4
            }
            
            var property:Double {
            get{return 3.0*sideLength}
            set{sideLength = newValue/3.0}
            }
            
            func area() -> Double{
                return sideLength*sideLength
            }
            override func simpleDescription() -> String{
                return "subClass sides are \(numberOfSides)"
            }
            
        
        }
        
        println("-------------subClass----------------------")
        
        
        let subClassOfSecond = mySecondClassSubClass(sideLength:5,name:"subClass")
        println("firse",subClassOfSecond.area())
        println(subClassOfSecond.simpleDescription())
        println(subClassOfSecond.property)
        subClassOfSecond.property = 9.9
        println(subClassOfSecond.property)
        println("second",subClassOfSecond.area())
        
        
        /* enum */
        
        enum Rank:Int{
            case Ace = 1
            case Two, Three,Four,Five,Six,Seven,Eight,Nine,Ten
            case Jack,Queen,King
            func simpleDescription() ->String{
                switch self{
                case Ace:
                    return "ace"
                case Jack:
                    return "jack"
                case Queen:
                    return "queen"
                case King:
                    return "king"
                default:
                    return String(self.toRaw())
                
                }
            
            }
        
        }
        let ace = Rank.Ace
        println("rank.ace = \(ace)")
        
        println("rank.ace = \(ace.toRaw())")
        
        let rankfromRaw = Rank.fromRaw(0)
        println("rank.fromRow = \(rankfromRaw?.toRaw())")
        
        println(rankfromRaw?.simpleDescription())
    */
        
        
        
        
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        return true
    }
    

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

