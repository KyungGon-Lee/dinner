require 'sinatra'

get '/' do
send_file 'home.html'
end

get '/dinner' do
	#점심 추천 로직
	#1. 배열 만들어 메뉴 넣고
	#2. 랜덤으로 하나 뽑아 출력\\
	menu = ["참치회", "성게알밥", "스테이크"]
	# puts menu.sample
	# return menu.sample
	@choice = menu.sample

	@url = {
		"참치회" => 'http://cfile1.uf.tistory.com/image/144C45464FA66100343766',
		"성게알밥" => 'http://img.chuing.net/i/CdKCxY/4db888a9e68eb.jpg',
		"스테이크" => 'http://mblogthumb3.phinf.naver.net/20160125_202/jinsancorp3383_1453727350704ERTn8_PNG/2016-01-25_22%3B08%3B50.png?type=w2'
	}

	# "
	# <p>#{choice}</p>
	# <img src =#{url[choice]}>
	# "

	# url = ""
	# if choice == "참치회"
	# url = 'http://cfile1.uf.tistory.com/image/144C45464FA66100343766'
	# elsif choice == "성게알밥"
	# url = 'http://img.chuing.net/i/CdKCxY/4db888a9e68eb.jpg'
	# elsif choice == "스테이크"
	# url = 'http://mblogthumb3.phinf.naver.net/20160125_202/jinsancorp3383_1453727350704ERTn8_PNG/2016-01-25_22%3B08%3B50.png?type=w2'
	# end
	# "
	# <p>#{choice}</p>
	# <img src =#{url}>
	# "
	erb :dinner
end


 get '/me' do
send_file 'me.html'

end
