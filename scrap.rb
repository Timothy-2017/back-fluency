text = params[:article]
key = ENV["YANDEX_API_KEY"]
language = params[:title]
BASE = `https://dictionary.yandex.net/api/v1/dicservice.json/lookup?key=#{key}&lang=en-#{language}&text=`
translated_article = ''

words = text.split(' ')

words.each do |word|
  byebug
  response = HTTParty.get(BASE.concat(word))
  if response.def[0].pos === 'noun'
    translated_article.push(response.def[0].tr[0].text)
  else
    translated_article.push(word)
  end
end
