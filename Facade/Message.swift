//
//  Message.swift
//  Facade
//
//  Created by Choiwansik on 2022/09/20.
//

import Foundation

internal struct Message {

    internal init(row: Row) {
        self.row = row
    }

    internal func makeName() -> String {
        return "Name: \"\(self.row.name)\""
    }

    internal func makeBirthday() -> String {
        return "Birthday: \"\(self.row.birthday)\""
    }

    private let row: Row

}
