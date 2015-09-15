import Cocoa

let input = "My Manchester Encoding"
println("original phrase: \(input)")

var byteArray = [UInt8](input.utf8)
var newByteArray = [UInt8]()

for c: UInt8 in byteArray {
    newByteArray += [c^85]
}

var myData = NSData(bytes: newByteArray, length: newByteArray.count)
println("new phrase: \(NSString(data: myData, encoding: NSUTF8StringEncoding)!)")

var oldByteArray = [UInt8]()

for c: UInt8 in newByteArray {
    oldByteArray += [c^85];
}

myData = NSData(bytes: oldByteArray, length: newByteArray.count)
println("reconstructed phrase: \(NSString(data: myData, encoding: NSUTF8StringEncoding)!)")