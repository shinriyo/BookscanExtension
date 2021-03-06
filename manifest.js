{
    "name": "BookScan Extension",
    "description": "ブックスキャンの本棚の命名",
    "version": "0.1",
    "icons": { "48": "icon48.png",
              "128": "icon128.png" },
    "manifest_version": 2,
    "permissions": [
        "tabs", "https://system.bookscan.co.jp/*"
    ],
    "content_scripts": [
        {
            "matches": ["https://system.bookscan.co.jp/*"],
            "js": ["js/jquery-1.9.1.min.js", "js/bookscan.js"]
        }
    ]
}
