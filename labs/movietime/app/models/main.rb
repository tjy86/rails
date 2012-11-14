class Main
	def self.run
		puts "add a movie or (q)uit?"
		search = gets.chomp
		while search != 'q'
			url = HTTParty.get('http://www.omdbapi.com/?i=&t='+search)
			json = JSON(url)
			t = json['Title']
			r = json['Rated']
			d = json['Director']
			g = json['Genre']
			m1 = Movie.create(:title => t, :rated => r)
			d1 = Director.create(:name => d)
			g1 = Genre.create(:type => g)
			d1.movies << m1
			g1.movies << m1

			puts "add a movie or (q)uit?"
			search = gets.chomp
		end
	end
end