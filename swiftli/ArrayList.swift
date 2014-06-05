//
//  ArrayList.swift
//  swiftli
//
//  Created by David Morgan-Brown on 05/06/2014.
//  Copyright (c) 2014 David Morgan-Brown. All rights reserved.
//


class ArrayList<T> {
    
    let array:T[]
    let r:Range<Int>
    
    init(array:T[]) {
        self.array = array
        self.r = Range(start:0,end:array.count)
    }
    
    init(array:T[],r:Range<Int>) {
        self.array = array
        self.r = r
    }
    
    func find(f:(T)->Bool)->T? {
        if isEmpty() {
            return nil
        } else if f( head() ) {
            return head()
        } else {
            return tail().find(f)
        }
    }
    
    func element(i:Int)->T {
        return array[i+r.startIndex];
    }
    
    func head() -> T {
        return array[r.startIndex]
    }
    
    func tail() -> ArrayList<T> {
        return ArrayList(array: array, r: Range(start: r.startIndex+1, end: r.endIndex))
    }
    
    func isEmpty() -> Bool {
        return r.startIndex >= r.endIndex
    }
    
    func length() -> Int {
        return r.endIndex - r.startIndex
    }
    
}
