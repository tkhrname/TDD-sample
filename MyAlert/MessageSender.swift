//
//  MessageSender.swift
//  MyAlert
//
//  Created by 渡邊丈洋 on 2019/02/10.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import Foundation
import UIKit

struct Message {}

struct TextMessage {}

struct ImageMessage {}

enum MessageType {
    case text
    case image
    case official
}

protocol MessageSenderDelegate {
}

final class CommonMessageAPI {
    
    func fetchAll(ofUserId: Int, completion: @escaping ([Message?]) -> Void) {}
    
    func fetch(id: Int, completion: @escaping (Message?) -> Void) {}
    
    func sendTextMessage(text: String, completion: @escaping (TextMessage?) -> Void) {}
    
    func sendImageMessage(image: UIImage, text: String?, completion: @escaping (ImageMessage?) -> Void) {}
}

final class MessageSender {
    private let api = CommonMessageAPI()
    let messageType: MessageType
    var delegate: MessageSenderDelegate?
    
    init(messageType: MessageType) {
        self.messageType = messageType
    }
    
    // 送信するメッセージの入力値
    var text: String? {
        didSet {
            if !isTextValid {
                //
            }
        }
    }
    
    var image: UIImage? {
        didSet {
            //
            if !isImageValid {
                
            }
        }
    }
    
    // 通信結果
    private(set) var isLoading: Bool = false
    private(set) var result: Message? // 通信成功したら値が入る
    
    private var isTextValid: Bool {
        switch messageType {
        case .text:
            return text != nil && text!.count <= 300
        case .image:
            return text == nil || text!.count <= 80
        case .official:
            return false
        }
    }
    
    private var isImageValid: Bool {
        return image != nil
    }
    
    private var isValid: Bool {
        switch messageType {
        case .text:
            return isTextValid
        case .image:
            return isTextValid && isImageValid
        case .official:
            return false
        }
    }
    
    func send() {
        if isValid { // delegate?.validでは無い事を伝える
            isLoading = true
            switch messageType {
            case .text:
                api.sendTextMessage(text: text!) { textMessage in
                    self.isLoading = false
                    // TODO: 結果を格納
                    // TODO: 通信完了を伝える
                }
            case .image:
                api.sendImageMessage(image: image!, text: text) { imagemessage in
                    
                }
            case .official:
                fatalError()
            }
        }
    }
}
