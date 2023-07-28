import Foundation

struct TikectingLayout {
    /**
     * MARK: 필요한 내용
     * 예매 ,,,,
     * 영화 이름
     * 영화 상영 시각
     * 좌석 선택
     * 결제 금액
     **/
    
    // 티켓팅 완료 후 티켓 출력
    let tikects: [Tikecting] = [
        Tikecting(
            movieName: "밀수",
            desciption: "영화관 내에서는 뛰지 마십시오.",
            movieTime: "129분",
            seat: "G3",
            price: 1.5
        ),
        Tikecting(
            movieName: "미션 임파서블 7",
            desciption: "영화관 내에서 휴대폰은 무음모드로 해주십시오.",
            movieTime: "165분",
            seat: "H5",
            price: 1.5
        ),
        Tikecting(
            movieName: "엘리멘탈",
            desciption: "영화관 내에서는 의자를 발로 차지 마십시오.",
            movieTime: "108분",
            seat: "C8",
            price: 1.5
        ),
        Tikecting(
            movieName: "명탐정 코난: 흑철의 어영",
            desciption: "영화관 내에서는 조용히 관람해주십시오.",
            movieTime: "111분",
            seat: "A6",
            price: 1.5
        ),
        Tikecting(
            movieName: "바비",
            desciption: "영화관 내에서 휴대폰은 무음모드로 해주십시오.",
            movieTime: "114분",
            seat: "I7",
            price: 1.5
        ),
        Tikecting(
            movieName: "인시디어스: 빨간 문",
            desciption: "영화관 내에서는 뛰지 마십시오.",
            movieTime: "107분",
            seat: "B9",
            price: 1.5
        ),
        Tikecting(
            movieName: "슈퍼 윙스: 멕시멈 스피드",
            desciption: "영화관 내에서는 조용히 관람해주십시오.",
            movieTime: "99분",
            seat: "D2",
            price: 1.5
        ),
        Tikecting(
            movieName: "헌티드 멘션",
            desciption: "영화관 내에서는 의자를 발로 차지 마십시오.",
            movieTime: "123분",
            seat: "E4",
            price: 1.5
        ),
        Tikecting(
            movieName: "여름날 우리",
            desciption: "영화관 내에서는 뛰지 마십시오.",
            movieTime: "115분",
            seat: "F3",
            price: 1.5
        ),
        Tikecting(
            movieName: "범죄도시 3",
            desciption: "영화관 내에서는 조용히 관람해주십시오.",
            movieTime: "105분",
            seat: "J6",
            price: 1.5
        ),
    ]
    
    func spacer() -> String {
        return "          "
    }
    
    func shrink() -> String {
        return "\n"
    }
    
    func divider() -> String {
        return "---------"
    }
    
    func showTikectingMemu() {
        for (_, Tikecting) in tikects.enumerated() {
            print("\(Tikecting.movieName)   \n   \(Tikecting.desciption)   \n   \(Tikecting.movieTime)  \(spacer())  \(Tikecting.seat)  \(spacer())  \(Tikecting.price)")
        }
    }
}
