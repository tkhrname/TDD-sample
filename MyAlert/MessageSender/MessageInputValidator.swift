//
//  MessageInputValidator.swift
//  MyAlert
//
//  Created by 渡邊丈洋 on 2019/02/16.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import Foundation
import UIKit

// バリデーションだけに関心のある型
struct TextMessageInputValidator {
//    let messageType: MessageType
//    let image: UIImage?
//    let text: String?
//
//    var isValid: Bool {
//        switch messageType {
//        case .text:
//            return isTextValid
//        case .image:
//            return isTextValid && isImageValid
//        case .official:
//            return false
//        }
//    }
//    private var isTextValid: Bool {
//        return true
//    }
//    private var isImageValid: Bool {
//        return true
//    }
    
    let text: String?
    var isValid: Bool {
        return text != nil && text!.count <= 300
    }
}

enum ImageMessageInputError: Error {
    case noImage
    case tooLongText(count: Int)
}

// messageの種別ごとに必要なバリデーションロジックが違うならswitchする必要がない
struct ImageMessageInputValidator {
    let image: UIImage?
    let text: String?
    
    func validate() throws -> (image: UIImage, text: String)? {
        guard let image = image else {
            throw ImageMessageInputError.noImage
        }
        if let text = text, text.count >= 80 {
            throw ImageMessageInputError.tooLongText(count: text.count)
        }
        return (image, text!)
    }
    
//    var isValid: Bool {
//        if image == nil { return false }
//        if let text = text, text.count > 80 { return false }
//        return true
//    }
}
