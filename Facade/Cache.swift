//
//  Cache.swift
//  Facade
//
//  Created by Choiwansik on 2022/09/20.
//

import Foundation

internal class Cache {

    internal func put(row: Row) {
        self.cache[row.name] = row
    }

    internal func get(with name: String) -> Row? {
        return self.cache[name]
    }

    private var cache = [String: Row]()
}
