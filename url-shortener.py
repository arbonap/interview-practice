import hashlib
import SimpleHTTPServer
import SocketServer
import requests

#URL shortener
#dictionary - key mapping of shortened url mapped to actual URL
# HTTP Status - 302 Redirect
# randomly generated shortened url
# Link table => primary key for each link .....
# one-to-one relationship between original url to the shortened, bitly url
# 3 columns in Link table: unique primary key column, original url, shortened url
#
# 1. Register, 2. Use the URL I want to get back
# For example:
# 'lovelifeofanasianguy.com'
# Return back:
# 'bit.ly/123'

PORT = 3000

Handler = SimpleHTTPServer.SimpleHTTPRequestHandler

httpd = SocketServer.TCPServer(("", PORT), Handler)

print "serving at port", PORT
httpd.serve_forever()

links = {}

def updatedictionary(original_url):
    """Puts in user's original_url as key, its value is shortened_url. """
    links[original_url] = shorten(original_url)

def shorten(original_url):
    """"Takes in a longer url and spits out a shorter url."""
    return hashlib.sha224(original_url).hexdigest()[:7]


# 1. User types in the urly they want to shortened
# 2. The URL goes through some sort of shortening functions
# 3. Shortened URL is given back to User
# 4.
