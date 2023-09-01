// Created by Leopold Lemmermann on 01.09.2023.

import Foundation

let ID = (
  BUNDLE: Bundle.main.bundleIdentifier!,
  GROUP: "group.\(Bundle.main.bundleIdentifier!)"
)

var CONTAINER_URL: URL { FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: ID.GROUP)! }

var LANGUAGE_CODE: Locale.LanguageCode { Locale.current.language.languageCode ?? .english }

let INFO = (
  APPNAME: (Bundle.main.infoDictionary?[kCFBundleNameKey as String] as? String)!,
  CREDITS: (
    DEVELOPERS: ["Leopold Lemmermann"],
    DESIGNERS: ["Leopold Lemmermann"]
  )
)
