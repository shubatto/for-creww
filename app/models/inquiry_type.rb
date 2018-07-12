class InquiryType < ActiveHash::Base
	self.data = [
		{ id: 0, name: '選択してください' },
		{ id: 1, name: '商品について' },
		{ id: 2, name: '配送について' },
		{ id: 3, name: '支払いについて'},
		{ id: 4, name: 'サイトの使い方について'},
		{ id: 5, name: 'その他'},
	]
end
