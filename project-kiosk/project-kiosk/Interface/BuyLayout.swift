import Foundation

// 예매 클래스 정의
class reserveMovies {
    
    // 입력값 정의 및 초기화
    var movieNum: Double
    var price: Double
    
    init(movieNum: Double, price: Double) {
        self.movieNum = movieNum
        self.price = price
    }
    
    // 예약 목록 초기화
    var reservationList = [reserveMovies]()
    
    // 예매 내역 초기화
    var buyTikect = [Buy]()
    
    // 잔고 초기화
    var myMoney = 0
    
    // 내 계정 초기화
    var myAccount = [""]
    
    // 랜덤한 숫자 생성
    func generateRandomNumber() -> Int {
        let lowerBound: Int = 10_000
        let upperBound: Int = 100_000
        let step: Int = 10_000
        
        // 랜덤한 인덱스 생성 (0부터 가능한 숫자의 개수까지)
        let randomIndex = arc4random_uniform(UInt32(Int((upperBound - lowerBound) / step + 1)))
        
        // 인덱스에 10,000을 곱하여 최종 결과 생성
        let randomNumber = lowerBound + Int(randomIndex) * step
        return randomNumber
    }
    
    // 금액 지급
    func provide() {
        let randomMoney = generateRandomNumber()
        myMoney += randomMoney
        print("내 돈의 남은 돈은 \(myMoney)원입니다")
        
        myAccount += ["\(randomMoney)원이 입금되었습니다. 잔액은 \(myMoney)입니다."]
    }
    
    func spacer() -> String {
        return "          "
    }
    
    func shrink() -> String {
        return "\n"
    }
    
    func divider() -> String {
        return "---------"
    }
    
    // [choice] 메소드는 구매할 영화표를 선택할수있습니다.
    func choice() {
        for (index, movie) in layout.currentMovies.enumerated() {
            print("\(index + 1). \(movie.title)  \n ")
            print("----------")
        }
        print("자세히: [D] \(spacer()) 뒤로: [B]")
        guard let selected = readLine()?.uppercased() else {
            print("번호가 잘못되었습니다. 다시 선택해주세요.")
            return
        }
        
        func choiceMovie() {
            // 사용자 입력
            print("원하시는 영화 번호를 입력하세요")
            let movieNum = readLine() ?? ""
            
            // 예약 가능 여부
            if movieNum == "" {
                print("영화 번호가 입력되지 않았습니다")
            } else if myMoney < Int(movieNum)!*10000 {
                print("잔고에 돈이 부족합니다")
            } else {
                // 예약 성공
                if let movieNum = Int(movieNum) {
                    reservationList.append(reserveMovies(movieNum: Double(movieNum), price: 15_000))
                    
                    // 금액 계산
                    let charge = Int(15_000)
                    myMoney -= charge
                    // 내역 저장
                    myAccount += ["예약 완료로 \(charge)원이 출금되었습니다. 잔액: \(myMoney)"]
                    print("예약이 완료되었습니다.")
                }
            }
        }
    }
    
    // 구매 클래스 정의
    class buying {
        // ?
        
        
        var movieName: String
        var price: Int
        
        init(movieName: String, price: Int) {
            self.movieName = movieName
            self.price = price
        }
        
        func spacer() -> String {
            return "          "
        }
        
        func shrink() -> String {
            return "\n"
        }
        
        func divider() -> String {
            return "---------"
        }
        
        // [pay] 선택후 결제를 확인.
        func pay(number: Int) {
            let choiceMovie = layout.currentMovies[number - 1]
            print("""
                  \(choiceMovie.title)를 선택했습니다.
                  가격은 15,000원입니다.
                  결제 하시겠습니까?
                  ----------
                  예: [Y] \(spacer()) 아니요 : [N]
                  """)
            guard let selected = readLine()?.uppercased() else {
                print("번호가 잘못되었습니다. 다시 선택해주세요.")
                return
            }
            switch selected {
            case "Y":
                complateMovies().completeMovie(number: number)
            case "N":
                reserveMovies(movieNum: Double(number), price: 15_000).choice()
            default:
                print("번호가 잘못되었습니다. 다시 선택해주세요.")
                pay(number: number)
            }
        }
    }
}

class complateMovies {
    // [completeMovie] 결제 완료.
    func completeMovie(number: Int) {
        let choiceMovie = layout.currentMovies[number - 1]
        print("선택하신 [\(choiceMovie.title)] 가 결제 완료되었습니다.")
        print("----------")
        print("구매확인: [3] \(spacer()) 스낵구매하기 : [4]")
        guard let selected = readLine()?.uppercased() else {
            print("번호가 잘못되었습니다. 다시 선택해주세요.")
            return
        }
    }
    
    func spacer() -> String {
        return "          "
    }
}
