/**
 * MARK: 현재 상영 중인 영화
 * 1.밀수, 2시간 9분, 범죄
 * 2.미션 임파서블 7, 2시간 45분, 액션
 * 3.엘리멘탈, 1시간 48분, 애니메이션
 * 4.명탐정 코난: 흑철의 어영, 1시간 51분, 미스터리
 * 5.바비, 1시간 54분, 코미디
 * 6.인시디어스: 빨간 문, 1시간 47분, 공포
 * 7.극장판 슈퍼윙스: 맥시멈 스피드, 1시간 29분, 애니메이션
 * 8.헌티드 액션, 2시간 3분, 판타지
 * 9.여름날 우리(디지털), 1시간 55분, 로맨스
 * 10. 범죄도시 3, 1시간 45분, 액션
 * 11.스파이더맨: 어크로스 더 유니버스, 2시간 20분, 액션
 * 12.슈퍼키드 헤일리, 1시간 15분, 애니메이션
 * 팝콘, 음료도 추가하면 좋을듯
 */

import Foundation

struct Layout {
	
	let menus: [Menu] = [
		Menu(title: "영화 찾기", description: "현재 상영 중인 영화 찾기"),
		Menu(title: "영화 예매", description: "영화 예매하기"),
		Menu(title: "구매 확인", description: "구매 내역 확인하기"),
		Menu(title: "푸드 구매", description: "먹거리 구매하기"),
		Menu(title: "나가기", description: "프로그램 종료하기"),
	]
	
	let currentMovies: [Movie] = [
		Movie(
			title: "밀수",
			runningTime: "2시간 09분",
			category: "범죄",
			plot: "바다에 던져진 밀수품을 건지며 생계를 이어가던 사람들 앞에 일생일대의 큰 판이 벌어지는데..",
			price: 1.5
		),
		Movie(
			title: "미션 임파서블 7",
			runningTime: "2시간 45분",
			category: "액션",
			plot: "전 세계가 위태로운 상황에 처한 가운데, 이를 추적하던 에단 헌트의 마지막 임무가 시작된다.",
			price: 1.5
		),
		Movie(
			title: "엘리멘탈",
			runningTime: "1시간 48분",
			category: "애니메이션",
			plot: "각양각색의 원소들이 살아가는 엘리멘트 시티, 지하철에서 우연히 마주친 앰버와 웨이드의 이야기",
			price: 1.5
		),
		Movie(
			title: "명탐정 코난: 흑철의 어영",
			runningTime: "1시간 51분",
			category: "미스터리",
			plot: "절체절명의 오션 배틀 로열 미스터리",
			price: 1.5
		),
		Movie(
			title: "바비",
			runningTime: "1시간 54분",
			category: "코미디",
			plot: "바비랜드에 사는 바비와 켄이 현실 세계로 가면서 일어나는 이야기",
			price: 1.5
		),
		Movie(
			title: "인시디어스: 빨간 문",
			runningTime: "1시간 47분",
			category: "공포",
			plot: "두번째 집 이후 램버트 가족이 다시 겪게 되는 끔찍한 악몽에 대한 이야기",
			price: 1.5
		),
		Movie(
			title: "슈퍼윙스: 맥시멈 스피드",
			runningTime: "1시간 29분",
			category: "애니메이션",
			plot: "장난감 악당에 맞서 지구를 구해줘!",
			price: 1.5
		),
		Movie(
			title: "헌티드 맨션",
			runningTime: "2시간 03분",
			category: "판타지",
			plot: "대저택을 팔겠다는 전화를 받고 짐 에버스는 아내와 두 아이를 데리고 대저택으로 향한다.",
			price: 1.5
		),
		Movie(
			title: "여름날 우리",
			runningTime: "1시간 55분",
			category: "로맨스",
			plot: "17세 여름, 저우샤오치는 전학생 요우용츠에게 첫눈에 반하지만, 어느 날 갑자기 사라진 그녀.",
			price: 1.5
		),
		Movie(
			title: "범죄도시 3",
			runningTime: "1시간 45분",
			category: "액션",
			plot: "조폭보다 더 조폭 같은 비주얼의 형사 마석도는 범죄 소탕을 위해 새로운 광역수사대원들과 작전을 펼친다.",
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
	
	func showMenu() {
		for (index, menu) in menus.enumerated() {
			print("\(index + 1). \(menu.title) | \(menu.description)")
		}
	}
	
	// [showCurrentMovie] 메소드는 현재 상영 중인 영화를 모두 보여줍니다.
	func showCurrentMovie() {
		for (index, movie) in currentMovies.enumerated() {
			print("\(index + 1). \(movie.title)   \n   \(movie.category) | \(movie.runningTime)")
			print("----------")
		}
		print("자세히: [D] \(spacer()) 뒤로: [0]")
		guard let selected = readLine()?.uppercased() else {
			print("번호가 잘못되었습니다. 다시 선택해주세요.")
			return
		}
		switch selected {
			case "D":
				showCurrentMovieDetails()
			case "0":
				showMenu()
			default:
				print("번호가 잘못되었습니다. 다시 선택해주세요.")
				showCurrentMovie()
		}
	}
	
	// [showCurrentMovieDetails] 메소드는 현재 상영 중인 영화를 줄거를 포함해서 모두 보여줍니다.
	func showCurrentMovieDetails() {
		for (index, movie) in currentMovies.enumerated() {
			print("\(index + 1). \(movie.title)   \n   \(movie.category) | \(movie.runningTime)   \n   \(movie.plot)")
			print("----------")
		}
		print("뒤로: [1] \(spacer()) 홈: [0]")
		guard let selected = readLine()?.uppercased() else {
			print("번호가 잘못되었습니다. 다시 선택해주세요.")
			return
		}
		switch selected {
			case "1":
				showCurrentMovie()
			case "0":
				showMenu()
			default:
				print("번호가 잘못되었습니다. 다시 선택해주세요.")
				showCurrentMovieDetails()
		}
	}
}
