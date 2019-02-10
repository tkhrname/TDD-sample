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

final class CommonMessageAPI {
    
    func fetchAll(ofUserId: Int, completion: @escaping ([Message?]) -> Void) {}
    
    func fetch(id: Int, completion: @escaping (Message?) -> Void) {}
    
    func setdTextMessage(text: String, completion: @escaping (TextMessage?) -> Void) {}
    
    func setdImageMessage(image: UIImage, text: String?, completion: @escaping (ImageMessage?) -> Void) {}
    
}
