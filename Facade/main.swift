//
//  main.swift
//  Facade
//
//  Created by Choiwansik on 2022/09/19.
//

import Foundation

internal func main() {
    let dbms = DBMS()
    let cache = Cache()

    let name = "wansik"


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

main()
