//
//  Models.swift
//  The Message App
//
//  Created by Vibol's Macbook Pro on 11/12/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import Foundation

class Introduction {
    var title: String
    var subTitle: String
    
    init(title: String, subTitle: String) {
        self.title = title
        self.subTitle = subTitle
    }
    
}

class Store {
    
    private var data = [Introduction]()
    
    init() {
        data.append(Introduction(title: "The Messaging App", subTitle: "The World's fastest messaging app. It is freeIntroduction and secure"))
        data.append(Introduction(title: "Fast", subTitle: "Telegram delivers messages faster than any other application"))
        data.append(Introduction(title: "Fast", subTitle: "Telegram delivers messages faster than any other application"))
        data.append(Introduction(title: "Fast", subTitle: "Telegram delivers messages faster than any other application"))
    }
    func getData() -> [Introduction]{
        
        return data
    }
}
