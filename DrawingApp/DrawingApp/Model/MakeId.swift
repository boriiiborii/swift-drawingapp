//
//  Id.swift
//  DrawingApp
//
//  Created by leehwajin on 2023/03/29.
//

import Foundation

class MakeId{
    let chars = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~!@#$%^&*").map({String($0)})

        func makeId() -> String{
            let randomChars = (0..<9).map { _ in chars.randomElement()! }
            let tempId = randomChars[0...2].joined() + "-" + randomChars[3...5].joined() + "-" + randomChars[6...8].joined()
            return tempId
        }
}
