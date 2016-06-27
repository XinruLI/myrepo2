require(httr)
GET("https://www.google.com")$header
res <- GET("https://www.goole.com/")
res
url <- "https://www.reddit.com/"
postres <- POST(url)
names(postres)
postres$header

url2 <- "http://httpbin.org/get"

res2 <- POST("http://httpbin.org/post", body ="what should I do?!")
GET("http://httpbin.org/post")$status_code
POST("http://httpbin.org/get")$status_code
x <- GET(url2)
x <- GET(url2, add_headers(wave="hi"))
x <- GET(url2, body = list(a=5))
http_status(x)
headers(x)
res$request
content(x)
content_type(x)

names(x)
x$request$httpheader
headers(x)
res <- GET(url2, accept_json())

url <- "http://www.omdbapi.com/?t=identity&y=&plot=short&r=json"
url <- "http://img.omdbapi.com/?apikey=[identity]"
res <- GET(url, accept_json())
res
content(res)

################
web_call <- GET('http://swapi.co/api/planets/1/')
web_call
#status : ok
content(web_call)

test1 <- "api.randomuser.me"
res1 <- GET(test1)
content(res1)
test2 <- "api.openweathermap.org/data/2.5/forecast?id=524901"
res2 <- GET(test2)
res2$status_code
stop_for_status(res2)
warn_for_status(res2)

call <- GET("http://google.com")
call
result <- content(call, as = 'text')

random <- GET("api.randomuser.me")
person <- content(call, as="text")
person
?content
?GET
content_type(random)
content(random, as="parsed")
