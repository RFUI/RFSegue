//
//  Test_RFSegue.swift
//  RFSegue
//
//  Created by BB9z on 2018/4/24.
//  Copyright © 2018 RFUI. All rights reserved.
//

import XCTest

class Test_RFSegue: XCTestCase {
    
    func testBaseClass() {
        let vc1 = UIViewController()
        let vc2 = UIViewController()
        let s = RFSegue(identifier: nil, source: vc1, destination: vc2) {
            
        }
        print(s.description)
        do {
            try RTHelper.catchException {
                s.perform()
            }
        } catch {
            print(error)
        }
    }
}
