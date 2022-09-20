//
//  Facade.swift
//  Facade
//
//  Created by Choiwansik on 2022/09/20.
//

import Foundation

internal struct Facade {

    internal func run(name: String) {
        if let row = cache.get(with: name) {

            let message = Message(row: row)
            print(message.makeName())
            print(message.makeBirthday())
            print(message.makeEmail())

        } else if let row = dbms.query(name: name) {
            cache.put(row: row)

            let message = Message(row: row)
            print(message.makeName())
            print(message.makeBirthday())
            print(message.makeEmail())

        } else {
            print("없는 이름입니다..")
            return
        }
    }

    private var dbms = DBMS()
    private var cache = Cache()
}
