import requests

hoge = requests.get(
    'https://hbh1qjsn5d.execute-api.ap-northeast-1.amazonaws.com/product/version/ios')

print(hoge.text)
