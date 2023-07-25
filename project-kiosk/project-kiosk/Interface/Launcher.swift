import Foundation

let manual = Manual()
let layout = Layout()

func app() {
	// MARK: Run console without debug build
	print(manual.on)
	print(layout.shrink())
	print(manual.selectMenu)
	layout.showMenu()
	while true {
		guard let selected = readLine()?.uppercased() else {
			print("번호가 잘못되었습니다. 다시 선택해주세요.")
			continue
		}
		switch selected {
			case "1":
				layout.showCurrentMovie()
			case "D":
				layout.showCurrentMovieDetails()
			case "2":
				print("영화 예매") // 7.25 > start
			case "3":
				print("구매 확인")
			case "4":
				print("푸드 구매")
			case "0":
				print(manual.off)
				break
			default:
				continue
		}
	}
}
