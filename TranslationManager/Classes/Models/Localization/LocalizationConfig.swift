//
//  Localization.swift
//  TranslationManager
//
//  Created by Andrew Lloyd on 19/06/2019.
//  Copyright © 2019 Nodes. All rights reserved.
//

import Foundation

public struct LocalizationConfig: LocalizationModel {

    public var language: Language
    public var lastUpdatedAt = Date()
    public var shouldUpdate: Bool = false
    public var localeIdentifier: String
    public var url: String

    enum CodingKeys: String, CodingKey {
        case language, url
        case lastUpdatedAt = "last_updated_at"
        case shouldUpdate = "should_update"
        case localeIdentifier = "locale_identifier"
    }

    public init(lastUpdatedAt: Date = Date(),
                localeIdentifier: String,
                shouldUpdate: Bool = false,
                url: String,
                language: Language
                ) {
        self.lastUpdatedAt = lastUpdatedAt
        self.localeIdentifier = localeIdentifier
        self.shouldUpdate = shouldUpdate
        self.url = url
        self.language = language
    }
}
