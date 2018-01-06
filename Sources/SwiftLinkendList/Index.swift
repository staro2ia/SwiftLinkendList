//
//  ListIndex.swift
//  SwiftLinkendListPackageDescription
//
//  Created by Павел Тимош on 03.01.2018.
//

import Foundation

public struct LinkedListIndex<T>: Comparable {
    
    let node: Node<T>?
    let i: Int
    
    public static func== (lhs: LinkedListIndex, rhs: LinkedListIndex) -> Bool {
        return lhs.i == rhs.i
    }
    
    public static func!= (lhs: LinkedListIndex, rhs: LinkedListIndex) -> Bool {
        return lhs.i != rhs.i
    }
    
    public static func< (lhs: LinkedListIndex, rhs: LinkedListIndex) -> Bool {
        return lhs.i < rhs.i
    }
    
    public static func<= (lhs: LinkedListIndex, rhs: LinkedListIndex) -> Bool {
        return lhs.i <= rhs.i
    }
    
    public static func> (lhs: LinkedListIndex, rhs: LinkedListIndex) -> Bool {
        return lhs.i > rhs.i
    }
    
    public static func>= (lhs: LinkedListIndex, rhs: LinkedListIndex) -> Bool {
        return lhs.i >= rhs.i
    }
}
