//
//  DBMS.swift
//  Facade
//
//  Created by Choiwansik on 2022/09/20.
//

import Foundation

internal struct DBMS {

    internal init() {
        self.dataBase["wansik"] = Row(name: "wansik", birthday: "03.16", email: "wansook0316@gmail.com")
        self.dataBase["hyejin"] = Row(name: "hyejin", birthday: "11.16", email: "hyejin@gmail.com")
        self.dataBase["jungmoo"] = Row(name: "jungmoo", birthday: "05.15", email: "jungmoo@gmail.com")
    }

    internal func query(name: String) -> Row? {
        Thread.sleep(forTimeInterval: 1)

        return self.dataBase[name]
    }

    private var dataBase = [String: Row]()
}
