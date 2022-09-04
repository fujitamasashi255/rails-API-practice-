## GET /api/v1/articles
記事一覧情報が得られること.

### Example

#### Request
```
GET /api/v1/articles HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Bearer c84482b9f26f3e7e7138d40ab2b2d159eed336d5eaed8f4a1c73a02ef734339451765b16c39354f256d357a16500aa1ffb4f820c0043e41a111b35eb7f4f3b1f
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 805
Content-Type: application/json; charset=utf-8
ETag: W/"747aade14876e5e536f1d7f36752305e"
Referrer-Policy: strict-origin-when-cross-origin
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: 140f30e9-0555-4107-94a8-1037dda209c7
X-Runtime: 0.013365
X-XSS-Protection: 1; mode=block

{
  "data": [
    {
      "id": "1",
      "type": "article",
      "attributes": {
        "title": "Title1",
        "contents": "Contents1",
        "status": "draft"
      },
      "relationships": {
        "user": {
          "data": {
            "id": "1",
            "type": "user"
          }
        }
      }
    },
    {
      "id": "2",
      "type": "article",
      "attributes": {
        "title": "Title2",
        "contents": "Contents2",
        "status": "draft"
      },
      "relationships": {
        "user": {
          "data": {
            "id": "1",
            "type": "user"
          }
        }
      }
    },
    {
      "id": "3",
      "type": "article",
      "attributes": {
        "title": "Title3",
        "contents": "Contents3",
        "status": "draft"
      },
      "relationships": {
        "user": {
          "data": {
            "id": "1",
            "type": "user"
          }
        }
      }
    },
    {
      "id": "4",
      "type": "article",
      "attributes": {
        "title": "Title4",
        "contents": "Contents4",
        "status": "draft"
      },
      "relationships": {
        "user": {
          "data": {
            "id": "1",
            "type": "user"
          }
        }
      }
    },
    {
      "id": "5",
      "type": "article",
      "attributes": {
        "title": "Title5",
        "contents": "Contents5",
        "status": "draft"
      },
      "relationships": {
        "user": {
          "data": {
            "id": "1",
            "type": "user"
          }
        }
      }
    }
  ]
}
```

## GET /api/v1/articles
HTTP Token: Access denied. がレスポンスボディとして返されること.

### Example

#### Request
```
GET /api/v1/articles HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 401
Cache-Control: no-cache
Content-Length: 27
Content-Type: text/plain; charset=utf-8
Referrer-Policy: strict-origin-when-cross-origin
WWW-Authenticate: Token realm="Application"
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: 6e83f2c4-1278-48bb-a9ef-628639e54ae9
X-Runtime: 0.026853
X-XSS-Protection: 1; mode=block

HTTP Token: Access denied.

```

## GET /api/v1/articles/:id
記事情報が得られること.

### Example

#### Request
```
GET /api/v1/articles/1 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Bearer c72934b0b757d2a56c38642c3c6ed48cf567285522e01aff957a0c97b6cd4d608f90112fe9f4ece3ab762848918d9402c8057076c20f177fb302d97ea9c4ee0b
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 167
Content-Type: application/json; charset=utf-8
ETag: W/"f0f624700249f9948e0164a8b1410065"
Referrer-Policy: strict-origin-when-cross-origin
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: e05ee34f-37de-480f-8245-92cde17cac36
X-Runtime: 0.008421
X-XSS-Protection: 1; mode=block

{
  "data": {
    "id": "1",
    "type": "article",
    "attributes": {
      "title": "Title6",
      "contents": "Contents6",
      "status": "draft"
    },
    "relationships": {
      "user": {
        "data": {
          "id": "1",
          "type": "user"
        }
      }
    }
  }
}
```

## GET /api/v1/articles/:id
HTTP Token: Access denied. がレスポンスボディとして返されること.

### Example

#### Request
```
GET /api/v1/articles/1 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 401
Cache-Control: no-cache
Content-Length: 27
Content-Type: text/plain; charset=utf-8
Referrer-Policy: strict-origin-when-cross-origin
WWW-Authenticate: Token realm="Application"
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: 4590d4b8-0b5e-41ba-8e14-1b10477e5053
X-Runtime: 0.007987
X-XSS-Protection: 1; mode=block

HTTP Token: Access denied.

```
