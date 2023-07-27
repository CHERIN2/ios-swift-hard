//
//  Launcher.swift
//  project-kiosk
//
//  Created by Yujin Kim on 2023-07-25.
//

import Foundation

let manual = Manual()
let layout = Layout()
let basket = Basket()
class Basket {
    
}
func app() {
    //MARK: Run console without debug build
    print(manual.on)
    print(layout.shrink())
    print(manual.selectMenu)
    layout.showMenu()
    while true{
        guard let selected = readLine() else {
            continue
        }
        
        
        switch selected {
        case "4":
            let menuList = ("""
================메뉴===================
1. 팝콘: 8,000
2. 나초: 7,000
3. 핫도그 5,000
4. 버터오징어 7,000
5. 콜라 3,000
6. 사이다 3,000
======================================
""")
            print("menuList")
        default:
                continue
                            }
                            
            guard let input = readLine(),
                  let inNum = Int(input) else { return }
            //var basket : Array <String> = Array<String>()
            var basket: [String] = []
            switch inNum{
            case 1:
                basket.append("팝콘: 8,000")
            case 2:
                basket.append("핫도그: 5,000")
            case 3:
                basket.append("버터오징어: 7,000")
            case 4:
                basket.append("콜라: 3,000")
            case 5:
                basket.append("사이다: 3,000")
            case 6:
                basket.append("나초: 7,000")
            default:
            
                print("장바구니에 \(basket[0]), \(basket[1]) 있습니다.")
                return
            }
        }
    }

    
    /*장바구니에 담기*/
    //                            print(푸드구매)
    //
    //                        case "0":
    //                            print(manual.off)
    //                            break
    //                        default:
    //                            continue
    
    //장바구니에 담기
    /* 장바구니에 0 팝콘 1 콜라 고르고
     장바구니에 들어간 요소들이 프린트 되는지 확인
     
     
     default:
     continue
     }
     
     }
     }
     */
