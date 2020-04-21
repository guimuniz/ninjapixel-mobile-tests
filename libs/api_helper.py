import http.client
conn = http.client.HTTPSConnection("pixel-api-helper.herokuapp.com")
payload = ''
headers = {
  'Content-Type': 'application/json'
}


def clean_cart(email):
    conn.request("DELETE", "/user/" + email + "/cart", payload, headers)
    res = conn.getresponse()
    data = res.read()
    return data.decode("utf-8")
